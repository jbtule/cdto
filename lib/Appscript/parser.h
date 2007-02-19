//
//  parser.h
//  appscript
//
//  Copyright (C) 2007 HAS
//

#import <Foundation/Foundation.h>
#import <Carbon/Carbon.h>


/**********************************************************************/
// wrapper for OSAGetAppTerminology

extern OSStatus AEMGetAppTerminology(NSURL *fileURL,
									 NSAppleEventDescriptor **resultDesc);


/**********************************************************************/


@interface ASParserDef : NSObject {
	NSString *name;
	OSType code;
	unsigned hash;
}

- (id)initWithName:(NSString*)name_ code:(OSType)code_;
- (NSString *)name;
- (OSType)code;

@end


/**********************************************************************/


@interface ASParserCommandDef : ASParserDef {
	OSType classCode;
	NSMutableArray *parameters;
	unsigned hash;
}

- (id)initWithName:(NSString*)name eventClass:(OSType)classCode_ eventID:(OSType)code_;
- (OSType)eventClass;
- (OSType)eventID;
- (void)addParameter:(ASParserDef *)def;
- (NSArray *)parameters;
@end


/**********************************************************************/


@interface ASAeteParser : NSObject {
	char *aeteData;
	unsigned long aeteSize;
	unsigned long cursor;
	/* terminology tables; order is significant where synonym definitions occur */
	NSMutableDictionary *commands;
	NSMutableArray *properties, *elements, *classes, *enumerators;
	/* use sets to record previously found definitions, and avoid adding duplicates to lists
	** (i.e. 'name+code not in <set>' is quicker than using 'name+code not in <list>')
	*/
	NSMutableSet *foundProperties, *foundElements, *foundClasses, *foundEnumerators;
	/* ideally, aetes should define both singular and plural names for each class, but
	** some define only one or the other so we need to fill in any missing ones afterwards
	*/
	NSMutableDictionary *classAndElementDefsByCode;
	NSMutableSet *foundClassCodes, *foundElementCodes;
}

- (unsigned short)integer;
- (OSType)word;
- (NSString *)name;

- (void)parseCommand;
- (void)parseClass;
- (void)parseComparison;
- (void)parseEnumeration;
- (void)parseSuite;

- (ASAeteParser *)parse:(NSAppleEventDescriptor *)aetes;

- (NSArray *)classes;
- (NSArray *)enumerators;
- (NSArray *)properties;
- (NSArray *)elements;
- (NSArray *)commands;
@end
