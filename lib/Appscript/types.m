//
//  types.m
//  aem
//
//  Copyright (C) 2007 HAS
//

#import "types.h"


/**********************************************************************/
// Booleans

static AEMBoolean *trueValue;
static AEMBoolean *falseValue;


@implementation AEMBoolean

+ (id)True {
	if (!trueValue)
		trueValue = [[AEMBoolean alloc] initWithBool: YES];
	return trueValue;
}

+ (id)False {
	if (!falseValue)
		falseValue = [[AEMBoolean alloc] initWithBool: NO];
	return falseValue;
}

- (id)initWithBool:(BOOL)value {
	self = [super init];
	if (!self) return self;
	boolValue = value;
	cachedDesc = [[NSAppleEventDescriptor alloc]
						 initWithDescriptorType: (value ? typeTrue : typeFalse)
										  bytes: NULL
										 length: 0];
	return self;
}

- (NSString *)description {
	return boolValue ? @"True" : @"False";
}

- (BOOL)boolValue {
	return boolValue;
}

- (NSAppleEventDescriptor *)desc {
	return cachedDesc;
}

@end


/**********************************************************************/
// Alias, FSRef, FSSpec wrappers

// TO DO: methods for working with Carbon Alias, FSRef, FSSpec types?

@implementation AEMFileBase

- (id)initWithPath:(NSString *)path {
	return [self initWithFileURL: [NSURL fileURLWithPath: path]];
}

- (id)initWithFileURL:(NSURL *)url {
	NSData *data;
	NSAppleEventDescriptor *furl;
	id result;
	
	if (![url isFileURL]) return nil;
	data = [[url absoluteString] dataUsingEncoding: NSUTF8StringEncoding];
	furl = [[NSAppleEventDescriptor alloc] initWithDescriptorType: typeFileURL
															 data: data];
	result = [self initWithDescriptor: furl];
	[furl release];
	return result;
}

- (id)initWithDescriptor:(NSAppleEventDescriptor *)desc_ {
	self = [super init];
	if (!self) return self;
	desc = [[desc_ coerceToDescriptorType: [self descriptorType]] retain];
	if (!desc) return nil; // failed coercion, e.g. due to creating an AEMAlias with a typeFileURL descriptor for a non-existent file
	return self;
}

// TO DO: -hash, -isEqual:

- (NSString *)description {
	return [NSString stringWithFormat: @"<%@ %@>", [self class], [self path]];
}

- (NSString *)path {
	return [[self url] path];
}

- (NSURL *)url {
	NSData *data;
	NSString *string;
	NSURL *url;
	
	data = [[desc coerceToDescriptorType: typeFileURL] data];
	string = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
	url = [NSURL URLWithString: string];
	[string release];
	return url;
}

- (NSAppleEventDescriptor *)desc {
	return desc;
}

- (DescType)descriptorType { // stub method; subclasses will override
	return '????';
}

@end


@implementation AEMAlias

+ (id)aliasWithPath:(NSString *)path {
	return [[[AEMAlias alloc] initWithPath: path] autorelease];
}

+ (id)aliasWithFileURL:(NSURL *)url {
	return [[[AEMAlias alloc] initWithFileURL: url] autorelease];
}

+ (id)aliasWithDescriptor:(NSAppleEventDescriptor *)desc_ {
	return [[[AEMAlias alloc] initWithDescriptor: desc_] autorelease];
}

- (DescType)descriptorType {
	return typeAlias;
}

@end


@implementation AEMFSRef

+ (id)fsrefWithPath:(NSString *)path {
	return [[[AEMFSRef alloc] initWithPath: path] autorelease];
}

+ (id)fsrefWithFileURL:(NSURL *)url {
	return [[[AEMFSRef alloc] initWithFileURL: url] autorelease];
}

+ (id)fsrefWithDescriptor:(NSAppleEventDescriptor *)desc_ {
	return [[[AEMFSRef alloc] initWithDescriptor: desc_] autorelease];
}

- (DescType)descriptorType {
	return typeFSRef;
}

@end


@implementation AEMFSSpec

+ (id)fsspecWithPath:(NSString *)path {
	return [[[AEMFSSpec alloc] initWithPath: path] autorelease];
}

+ (id)fsspecWithFileURL:(NSURL *)url {
	return [[[AEMFSSpec alloc] initWithFileURL: url] autorelease];
}

+ (id)fsspecWithDescriptor:(NSAppleEventDescriptor *)desc_ {
	return [[[AEMFSSpec alloc] initWithDescriptor: desc_] autorelease];
}

- (DescType)descriptorType {
	return typeFSS;
}

@end


/**********************************************************************/
// types, enums, etc.


@implementation AEMTypeBase

- (id)init {
	return nil;
}

// clients shouldn't call this initialiser directly; use subclasses' initialisers instead
- (id)initWithDescriptorType:(DescType)type_
						code:(OSType)code_
						desc:(NSAppleEventDescriptor *)desc {
	self = [super init];
	if (!self) return self;
	type = type_;
	code = code_;
	[desc retain];
	cachedDesc = desc;
	return self;
}

- (id)initWithDescriptor:(NSAppleEventDescriptor *)desc {
	return [self initWithDescriptorType: '\000\000\000\000'
								   code: '\000\000\000\000'
								   desc: desc];
}

- (id)initWithCode:(OSType)code_ { // subclasses should override this method
	return nil;
}

- (void)dealloc {
	[cachedDesc release];
	[super dealloc];
}

- (unsigned)hash {
	return (unsigned)[self code];
}

- (BOOL)isEqual:(id)anObject {
	if (anObject == self) 
		return YES;
	if (!anObject || ![anObject isKindOfClass: [self class]]) 
		return NO;
	return [self code] == [anObject code];
}

- (NSString *)description {
	if (!type)
		type = [cachedDesc descriptorType];
	switch (type) {
		case typeType:
			return [NSString stringWithFormat: @"<AEMType %@>", [[self desc] stringValue]];
		case typeEnumerated:
			return [NSString stringWithFormat: @"<AEMEnumerated %@>", [[self desc] stringValue]];
		case typeProperty:
			return [NSString stringWithFormat: @"<AEMProperty %@>", [[self desc] stringValue]];
		case typeKeyword:
			return [NSString stringWithFormat: @"<AEMKeyword %@>", [[self desc] stringValue]];
		default:
			return nil;
	}
}

- (OSType)code {
	if (!code)
		code = [cachedDesc typeCodeValue]; // TO DO: check this works for enums, properties, keywords; if not, extract code via -data + -getBytes:length:
	return code;
}

- (NSAppleEventDescriptor *)desc {
	if (!cachedDesc)
		cachedDesc = [[NSAppleEventDescriptor alloc] initWithDescriptorType: type
																	  bytes: &code
																	 length: sizeof(code)];
	return cachedDesc;
}

- (id)copyWithZone:(NSZone *)zone {
	return [self retain]; // TO DO: check this is right
}

@end


/***********************************/


@implementation AEMType

+ (id)typeWithCode:(OSType)code_ {
	return [[[AEMType alloc] initWithCode: code_] autorelease];
}

- (id)initWithCode:(OSType)code_ {
	return [super initWithDescriptorType: typeType code: code_ desc: nil];
}

@end


@implementation AEMEnum

+ (id)enumWithCode:(OSType)code_ {
	return [[[AEMEnum alloc] initWithCode: code_] autorelease];
}

- (id)initWithCode:(OSType)code_ {
	return [super initWithDescriptorType: typeEnumerated code: code_ desc: nil];
}

@end


@implementation AEMProperty

+ (id)propertyWithCode:(OSType)code_ {
	return [[[AEMProperty alloc] initWithCode: code_] autorelease];
}

- (id)initWithCode:(OSType)code_ {
	return [super initWithDescriptorType: typeProperty code: code_ desc: nil];
}

@end


@implementation AEMKeyword

+ (id)keywordWithCode:(OSType)code_ {
	return [[[AEMKeyword alloc] initWithCode: code_] autorelease];
}

- (id)initWithCode:(OSType)code_ {
	return [super initWithDescriptorType: typeKeyword code: code_ desc: nil];
}

@end

