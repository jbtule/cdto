//
//  codecs.m
//  aem
//
//  Copyright (C) 2007 HAS
//

#import "codecs.h"

/*
 * NOTES:
 * - NSAppleEventDescriptors don't work as dictionary keys; use AEMType/AEMProperty instead (or NSString for user-defined property names)
 */

/*
 * TO DO:
 * - unit types support
 * - finish reference unpacking
 */


/**********************************************************************/


@implementation AEMCodecs

/***********************************/
// main pack methods; subclasses can override to process some or all values themselves

// subclasses can override -packUnknown: to process any still-unconverted types
- (NSAppleEventDescriptor *)packUnknown:(id)data {
	if (data)
		[NSException raise: @"CodecsError"
					format: @"Can't pack data of class %@ (unsupported type): %@",
							[data class], data];
	else
		[NSException raise: @"CodecsError" format: @"Can't pack nil."];
	return nil;
}

- (NSAppleEventDescriptor *)pack:(id)anObject {
	UInt32 uint32;
	SInt64 sint64;
	UInt64 uint64;
	double float64;
	CFAbsoluteTime cfTime;
	LongDateTime longDate;
	NSData *data;
	NSAppleEventDescriptor *result;
		
	if ([anObject isKindOfClass: [AEMQuery class]])
		result = [anObject packSelf: self];
	else if ([anObject isKindOfClass: [AEMBoolean class]])
		return [anObject desc];
	else if ([anObject isKindOfClass: [NSNumber class]]) {
		switch (*[anObject objCType]) {
			/*
			 * note: for better compatibility with less well-designed applications that don't like
			 * less common integer types (typeSInt64, typeUInt32, etc.), try to use typeInteger (SInt32)
			 * and typeFloat (double) whenever possible
			 */
			case 'b':
			case 'c':
			case 'C':
			case 's':
			case 'S':
			case 'i':
			case 'l':
				packAsSInt32:
					result = [NSAppleEventDescriptor descriptorWithInt32: [anObject longValue]];
					break;
			case 'I':
			case 'L':
				uint32 = [anObject unsignedLongValue];
				if (uint32 < 0x7FFFFFFF)
					goto packAsSInt32;
				result = [NSAppleEventDescriptor descriptorWithDescriptorType: typeUInt32
																	  bytes: &uint32
																	 length: sizeof(uint32)];
				break;
			case 'q':
				packAsSInt64:
					sint64 = [anObject longLongValue];
					if (sint64 >= 0x80000000 && sint64 < 0x7FFFFFFF)
						goto packAsSInt32;
					result = [NSAppleEventDescriptor descriptorWithDescriptorType: typeSInt64
																		  bytes: &sint64
																		 length: sizeof(sint64)];
					break;
			case 'Q':
				uint64 = [anObject unsignedLongLongValue];
				if (uint64 < 0x7FFFFFFF)
					goto packAsSInt32;
				else if (uint64 < pow(2, 63))
					goto packAsSInt64;
			default: // f, d
				packAsDouble:
					float64 = [anObject doubleValue];
					result = [NSAppleEventDescriptor descriptorWithDescriptorType: typeIEEE64BitFloatingPoint
																			bytes: &float64
																		   length: sizeof(float64)];
		}
	} else if ([anObject isKindOfClass: [NSString class]])
		result = [NSAppleEventDescriptor descriptorWithString: anObject];
	else if ([anObject isKindOfClass: [NSDate class]]) {
		cfTime = [anObject timeIntervalSinceReferenceDate];
		if (!UCConvertCFAbsoluteTimeToLongDateTime(cfTime, &longDate))
			result = [NSAppleEventDescriptor descriptorWithDescriptorType: typeLongDateTime
																  bytes: &longDate
																 length: sizeof(longDate)];
	} else if ([anObject isKindOfClass: [NSArray class]])
		result = [self packArray: anObject];
	else if ([anObject isKindOfClass: [NSDictionary class]])
		result = [self packDictionary: anObject];
	else if ([anObject isKindOfClass: [AEMFileBase class]])
		return [anObject desc];
	else if ([anObject isKindOfClass: [NSURL class]]) {
		if ([anObject isFileURL]) {
			data = [[anObject absoluteString] dataUsingEncoding: NSUTF8StringEncoding];
			return [NSAppleEventDescriptor descriptorWithDescriptorType: typeFileURL
																   data: data];
		} else
			return [self packUnknown: anObject];
	} else if ([anObject isKindOfClass: [AEMTypeBase class]])
		result = [anObject desc];
	else if ([anObject isKindOfClass: [NSAppleEventDescriptor class]])
		result = anObject;
	else if ([anObject isKindOfClass: [NSNull class]])
		result = [NSAppleEventDescriptor nullDescriptor];
	// TO DO: unit types
	else
		result = [self packUnknown: anObject];
	if (!result)
		[NSException raise: @"CodecsError"
					format: @"An unexpected error occurred while packing an %@ object: %@",
							[anObject class], anObject];
	return result;
}


- (NSAppleEventDescriptor *)packArray:(NSArray *)anObject {
	NSEnumerator *enumerator;
	NSAppleEventDescriptor *desc;
	id item;
	
	enumerator = [anObject objectEnumerator];
	desc = [NSAppleEventDescriptor listDescriptor];
	while (item = [enumerator nextObject])
		[desc insertDescriptor: [self pack: item] atIndex: 0];
	return desc;
}


- (NSAppleEventDescriptor *)packDictionary:(NSDictionary *)anObject {
	NSEnumerator *enumerator;
	NSAppleEventDescriptor *result, *coercedDesc, *keyDesc, *valueDesc, *userProperties = nil;
	id key, value;
	OSType keyCode;
	
	enumerator = [anObject keyEnumerator];
	result = [NSAppleEventDescriptor recordDescriptor];
	while (key = [enumerator nextObject]) {
		value = [anObject objectForKey: key];
		if (!value) [NSException raise: @"BadDictionaryKey"
								format: @"Not an acceptable dictionary key: %@", key];
		keyDesc = [self pack: key];
		valueDesc = [self pack: value];
		keyCode = [keyDesc descriptorType];
		if (keyCode == typeType || keyCode == typeProperty) {
			keyCode = [keyDesc typeCodeValue];
			if (keyCode == pClass && [valueDesc descriptorType] == typeType) {
				// AS packs records that contain a 'class' property by coercing the record to that type
				coercedDesc = [result coerceToDescriptorType: [valueDesc typeCodeValue]];
				if (coercedDesc)
					result = coercedDesc;
				else // coercion failed, so pack it as a regular record item instead
					[result setDescriptor: valueDesc forKeyword: keyCode];
			} else
				[result setDescriptor: valueDesc forKeyword: keyCode];
		} else {
			if (!userProperties)
				userProperties = [NSAppleEventDescriptor listDescriptor];
			[userProperties insertDescriptor: keyDesc atIndex: 0]; // i.e. with 1-indexed AEDescs, index 0 = 'append'
			[userProperties insertDescriptor: valueDesc atIndex: 0];
		}
	}
	if (userProperties)
		[result setDescriptor: userProperties forKeyword: keyASUserRecordFields];
	return result;
}


/***********************************/
// main unpack methods; subclasses can override to process some or all descs themselves

- (id)unpackUnknown:(NSAppleEventDescriptor *)desc {
	NSAppleEventDescriptor *record, *descType;
	if (AECheckIsRecord([desc aeDesc])) { 
		/*
		 * if it's a record-like structure with an unknown/unsupported type then unpack 
		 * it as a hash, including the original type info as a 'class' property
		 */
		record = [desc coerceToDescriptorType: typeAERecord];
		descType = [NSAppleEventDescriptor descriptorWithTypeCode: [desc descriptorType]];
		[record setDescriptor: descType forKeyword: pClass];
		return [self unpack: record];
	} else
		return desc;
}


- (id)unpack:(NSAppleEventDescriptor *)desc {
	LongDateTime longTime;
	CFAbsoluteTime cfTime;
	Boolean boolean;
	SInt16 sint16;
	UInt32 uint32;
	SInt64 sint64;
	float float32;
	double float64;
	NSString *string;
	NSURL *url;
	NSArray *array;
	
	switch ([desc descriptorType]) {
		case typeObjectSpecifier:
			return [self unpackObjectSpecifier: desc];
		case typeSInt32:
			return [NSNumber numberWithLong: [desc int32Value]];
		case typeIEEE64BitFloatingPoint:
			[[desc data] getBytes: &float64 length: sizeof(float64)];
			return [NSNumber numberWithDouble: float64];
		case typeChar: 
		case typeIntlText:
		case typeUTF8Text:
		case typeUTF16ExternalRepresentation:
		case typeStyledText:
		case typeUnicodeText:
			return [desc stringValue];
		case typeFalse:
			return AEMFalse;
		case typeTrue:
			return AEMTrue;
		case typeLongDateTime:
			[[desc data] getBytes: &longTime length: sizeof(longTime)];
			if (UCConvertLongDateTimeToCFAbsoluteTime(longTime, &cfTime)) return nil;
			return [NSDate dateWithTimeIntervalSinceReferenceDate: cfTime];
		case typeAEList:
			return [self unpackAEList: desc];
		case typeAERecord:
			return [self unpackAERecord: desc];
		case typeAlias: 
			return [AEMAlias aliasWithDescriptor: desc];
		case typeFileURL:
			string = [[NSString alloc] initWithData: [desc data] encoding: NSUTF8StringEncoding];
			url = [NSURL URLWithString: string];
			[string release];
			return url;
		case typeFSRef:
			return [AEMFSRef fsrefWithDescriptor: desc];
		case typeFSS:
			return [AEMFSSpec fsspecWithDescriptor: desc];
		case typeType:
			return [self unpackType: desc];
		case typeEnumerated:
			return [self unpackEnum: desc];
		case typeProperty:
			return [self unpackProperty: desc];
		case typeKeyword:
			return [self unpackKeyword: desc];
		case typeSInt16:
			[[desc data] getBytes: &sint16 length: sizeof(sint16)];
			return [NSNumber numberWithShort: sint16];
		case typeUInt32:
			[[desc data] getBytes: &uint32 length: sizeof(uint32)];
			return [NSNumber numberWithUnsignedLong: uint32];
		case typeSInt64:
			[[desc data] getBytes: &sint64 length: sizeof(sint64)];
			return [NSNumber numberWithLongLong: sint64];
		case typeNull:
			return [NSNull null];
		case typeInsertionLoc:
			return [self unpackInsertionLoc: desc];
		case typeCurrentContainer:
			return [self con];
		case typeObjectBeingExamined:
			return [self its];
		case typeCompDescriptor:
			return [self unpackCompDescriptor: desc];
		case typeLogicalDescriptor:
			return [self unpackLogicalDescriptor: desc];
		case typeIEEE32BitFloatingPoint:
			[[desc data] getBytes: &float32 length: sizeof(float32)];
			return [NSNumber numberWithDouble: float32];
		case type128BitFloatingPoint:
			[[[desc coerceToDescriptorType: typeIEEE64BitFloatingPoint] data] getBytes: &float64 
																				length: sizeof(float64)];
			return [NSNumber numberWithDouble: float64];
		case typeQDPoint:
			array = [self unpackAEList: [desc coerceToDescriptorType: typeAEList]];
			return [NSArray arrayWithObjects: [array objectAtIndex: 1],
											  [array objectAtIndex: 0]];
		case typeQDRectangle:
			array = [self unpackAEList: [desc coerceToDescriptorType: typeAEList]];
			return [NSArray arrayWithObjects: [array objectAtIndex: 1],
											  [array objectAtIndex: 0],
											  [array objectAtIndex: 3],
											  [array objectAtIndex: 2]];
		case typeRGBColor:
			return [self unpackAEList: [desc coerceToDescriptorType: typeAEList]];
		case typeVersion:
		case typeBoolean:
			[[desc data] getBytes: &boolean length: sizeof(boolean)];
			return boolean ? AEMTrue : AEMFalse;
	}
	// TO DO: unit types
	return [self unpackUnknown: desc];
}

// methods called by -unpack:; may be overridden by subclasses to modify how values are unpacked

- (id)unpackAEList:(NSAppleEventDescriptor *)desc {
	NSMutableArray *result;
	int i, length;
	
	result = [NSMutableArray array];
	length = [desc numberOfItems];
	for (i = 1; i <= length; i++)
		[result addObject: [self unpack: [desc descriptorAtIndex: i]]];
	return result;
}

- (id)unpackAERecord:(NSAppleEventDescriptor *)desc {
	OSErr err = noErr;
	NSMutableDictionary *result;
	NSAppleEventDescriptor *valueDesc;
	AEKeyword key;
	const AEDesc *record;
	AEDesc valueAEDesc;
	int i, j, length, length2;
	id value;
	
	result = [NSMutableDictionary dictionary];
	length = [desc numberOfItems];
	record = [desc aeDesc];
	for (i = 1; i <= length; i++) {
		err = AEGetNthDesc(record,
						   i,
						   typeWildCard,
						   &key,
						   &valueAEDesc);
		if (err != noErr) return nil; // don't think this will ever happen
		valueDesc = [[NSAppleEventDescriptor alloc] initWithAEDescNoCopy: &valueAEDesc];
		value = [self unpack: valueDesc];
		if (key == keyASUserRecordFields) {
			length2 = [value count]; 
			for (j = 0; j < length2; j += 2)
				[result setObject: [value objectAtIndex: j]
						   forKey: [value objectAtIndex: j + 1]];
		} else
			[result setObject: value forKey: [self unpackAERecordKey: key]]; 
		[valueDesc release];
	}
	return result;
}

// subclasses can override this method to change how record keys are unpacked:
- (id)unpackAERecordKey:(AEKeyword)key {
	return [AEMType typeWithCode: key];
}


- (id)unpackType:(NSAppleEventDescriptor *)desc {
	return [[[AEMType alloc] initWithDescriptor: desc] autorelease];
}

- (id)unpackEnum:(NSAppleEventDescriptor *)desc {
	return [[[AEMEnum alloc] initWithDescriptor: desc] autorelease];
}

- (id)unpackProperty:(NSAppleEventDescriptor *)desc {
	return [[[AEMProperty alloc] initWithDescriptor: desc] autorelease];
}

- (id)unpackKeyword:(NSAppleEventDescriptor *)desc {
	return [[[AEMKeyword alloc] initWithDescriptor: desc] autorelease];
}


- (id)fullyUnpackObjectSpecifier:(NSAppleEventDescriptor *)desc {
	OSType wantCode, keyForm;
	NSAppleEventDescriptor *key;
	id ref;
	
	switch ([desc descriptorType]) {
		case typeObjectSpecifier:
			wantCode = [[desc descriptorForKeyword: keyAEDesiredClass] typeCodeValue];
			keyForm = [[desc descriptorForKeyword: keyAEKeyForm] enumCodeValue];
			key = [desc descriptorForKeyword: keyAEKeyData];
			ref = [self fullyUnpackObjectSpecifier: [desc descriptorForKeyword: keyAEContainer]];
			switch (keyForm) {
				case formPropertyID:
					return [ref property: [key typeCodeValue]];
				case formUserPropertyID:
					return [ref userProperty: [self unpack: key]];
				case formRelativePosition:
					switch ([key typeCodeValue]) {
						case kAEPrevious:
							return [ref previous: wantCode];
						case kAENext:
							return [ref next: wantCode];
						default: // unknown key (should never happen unless object specifier is malformed)
							return nil;
					}
			}
			ref = [ref elements: wantCode];
			switch (keyForm) {
				case formAbsolutePosition:
					if ([key descriptorType] == typeAbsoluteOrdinal)
						switch ([key typeCodeValue]) {
							case kAEAll:
								return ref;
							case kAEFirst:
								return [ref first];
							case kAEMiddle:
								return [ref middle];
							case kAELast:
								return [ref last];
							case kAEAny:
								return [ref any];
							default: // unknown key (should never happen unless object specifier is malformed)
								return nil;
						}
					else
						return [ref byIndex: [self unpack: key]];
				case formName:
					return [ref byName: [self unpack: key]];
				case formUniqueID:
					return [ref byID: [self unpack: key]];
				case formRange:
					return [ref byRange: [self unpack: [key descriptorForKeyword: keyAERangeStart]]
									 to: [self unpack: [key descriptorForKeyword: keyAERangeStop]]];
				case formTest:
					return [ref byTest: [self unpack: key]];
			}
		case typeNull:
			return [self app];
		case typeCurrentContainer:
			return [self con];
		case typeObjectBeingExamined:
			return [self its];
		default:
			return [self unpack: desc];
	}
}

- (id)unpackObjectSpecifier:(NSAppleEventDescriptor *)desc {
	return [self fullyUnpackObjectSpecifier: desc]; // TO DO: implement deferred unpack
}

- (id)unpackInsertionLoc:(NSAppleEventDescriptor *)desc {
	id ref;
	
	ref = [self unpack: [desc descriptorForKeyword: keyAEObject]];
	switch ([[desc descriptorForKeyword: keyAEPosition] enumCodeValue]) {
		case kAEBeginning:
			return [ref start];
		case kAEEnd:
			return [ref end];
		case kAEBefore:
			return [ref before];
		case kAEAfter:
			return [ref after];
		default: // unknown key (should never happen unless object specifier is malformed)
			return nil;
	}
}

- (id)app {
	return AEMApp;
}

- (id)con {
	return AEMCon;
}

- (id)its {
	return AEMIts;
}

- (id)unpackCompDescriptor:(NSAppleEventDescriptor *)desc {
	return nil; // TO DO
}

- (id)unpackLogicalDescriptor:(NSAppleEventDescriptor *)desc {
	return nil; // TO DO
}

@end


/**********************************************************************/
