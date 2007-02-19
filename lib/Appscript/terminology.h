//
//  terminology.h
//  appscript
//
//  Copyright (C) 2007 HAS
//

#import <Foundation/Foundation.h>
#import "parser.h"


/**********************************************************************/


@interface ASNullConverter : NSObject

- (NSString *)convert:(NSString *)name;

@end


/**********************************************************************/


typedef enum {kPropertyDef, kElementDef} ASReferenceType;


@interface ASReferenceDef : NSObject {
	OSType code;
	ASReferenceType type;
}

- (id) initWithCode:(OSType)code_ type:(ASReferenceType)type_;


- (OSType)code;

- (ASReferenceType)type;

@end


@interface ASCommandDef : NSObject {
	OSType classCode;
	OSType code;
	NSMutableDictionary *parameters;
}

- (id)initWithEventClass:(OSType)classCode_
				 eventID:(OSType)code_
			  parameters:(NSArray *)parameters_
		keywordConverter:(id)converter;


- (OSType)classCode;

- (OSType)code;

- (BOOL)parameterByName:(NSString *)name code:(OSType *)code_;

@end


/**********************************************************************/


@interface ASStringTerminology : NSObject {
	NSMutableDictionary *typeByName;
	NSMutableDictionary *typeByCode;
	
	NSMutableDictionary *propertyByName;
	NSMutableDictionary *propertyByCode;
	NSMutableDictionary *elementByName;
	NSMutableDictionary *elementByCode;
	
	NSMutableDictionary *commandByName;
	
	id converter;
}

/*
 * converter : AS keyword string to C identifer string converter; should implement:
 *		-(NSString *)convert:(NSString *)name
 *		-(NSString *)escape:(NSString *)name
 */
- (id)initWithKeywordConverter:(id)converter_;

/*
 * data : ASParser or equivalent;
 *		should implement the following accessors:
 *				-classes, -enumerators, -properties, -elements, -commands
 */
- (id)addData:(id)data;

// used internally:

- (void)addTypeTableDefinitions:(NSArray *)definitions ofType:(OSType)descType;

- (void)addReferenceTableDefinitions:(NSArray *)definitions
						 toNameTable:(NSMutableDictionary *)nameTable
						   codeTable:(NSMutableDictionary *)codeTable;

// Lookup methods return YES/NO to indicate if lookup was successful.

// Used to pack/unpack typeType, typeEnumerated, typeProperty:

- (BOOL)typeByName:(NSString *)name
				  desc:(NSAppleEventDescriptor **)desc;

- (BOOL)typeByCode:(OSType)descData
				  name:(NSString **)name;

// Used to build AEM references:

- (BOOL)referenceByName:(NSString *)name
					  code:(OSType *)code
					  type:(ASReferenceType *)type;

// Used by -description to render AEM references:

- (BOOL)referenceByCode:(OSType)code
					  name:(NSString **)name
					  type:(ASReferenceType *)type; // when calling, pass preferred reference type; on return, contains actual type found

// Used to pack Apple events:

- (BOOL)commandByName:(NSString *)name
			  definition:(ASCommandDef **)definition;

@end


/**********************************************************************/

/*
@interface ASAppData : NSObject {
	ASAddressType addressType;
	id addressData;
	id terminology;
	AEAddressDesc *target;
}
// TO DO
@end
*/
