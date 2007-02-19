//
//  types.h
//  aem
//
//  Copyright (C) 2007 HAS
//

#import <Foundation/Foundation.h>
#import <Carbon/Carbon.h>


/**********************************************************************/
// convenience macros

#define AEMTrue [AEMBoolean True]
#define AEMFalse [AEMBoolean False]


/**********************************************************************/
// Boolean class represents AEDescs of typeTrue and typeFalse


@interface AEMBoolean : NSObject {
	BOOL boolValue;
	NSAppleEventDescriptor *cachedDesc;
}

+ (id)True;

+ (id)False;

// client's shouldn't call -initWithBool: directly; use +True/+False (or AEMTrue/AEMFalse macros) instead
- (id)initWithBool:(BOOL)boolValue_;

- (BOOL)boolValue;

- (NSAppleEventDescriptor *)desc;

@end


/**********************************************************************/
// file object classes represent AEDescs of typeAlias, typeFSRef, typeFSSpec

//abstract base class
@interface AEMFileBase : NSObject {
	NSAppleEventDescriptor *desc;
}

- (id)initWithPath:(NSString *)path;

- (id)initWithFileURL:(NSURL *)url;

- (id)initWithDescriptor:(NSAppleEventDescriptor *)desc_;

- (NSString *)path;

- (NSURL *)url;

- (NSAppleEventDescriptor *)desc;

- (DescType)descriptorType;

@end


/***********************************/
// concrete classes

@interface AEMAlias : AEMFileBase

+ (id)aliasWithPath:(NSString *)path;

+ (id)aliasWithFileURL:(NSURL *)url;

+ (id)aliasWithDescriptor:(NSAppleEventDescriptor *)desc_;

@end


@interface AEMFSRef : AEMFileBase

+ (id)fsrefWithPath:(NSString *)path;

+ (id)fsrefWithFileURL:(NSURL *)url;

+ (id)fsrefWithDescriptor:(NSAppleEventDescriptor *)desc_;

@end


@interface AEMFSSpec : AEMFileBase

+ (id)fsspecWithPath:(NSString *)path;

+ (id)fsspecWithFileURL:(NSURL *)url;

+ (id)fsspecWithDescriptor:(NSAppleEventDescriptor *)desc_;

@end


/**********************************************************************/

// abstract base class for AEMType, AEMEnum, AEMProperty, AEMKeyword
@interface AEMTypeBase : NSObject {
	DescType type;
	OSType code;
	NSAppleEventDescriptor *cachedDesc;
}

// clients shouldn't call this next method directly; use subclasses' class/instance initialisers instead
- (id)initWithDescriptorType:(DescType)type_
						code:(OSType)code_
						desc:(NSAppleEventDescriptor *)desc;

- (id)initWithDescriptor:(NSAppleEventDescriptor *)desc; // normally called by AEMCodecs -unpack:, though clients could also use it to wrap any loose NSAppleEventDescriptor instances they might have. Note: doesn't verify descriptor's type before use; clients are responsible for providing an appropriate value.

- (id)initWithCode:(OSType)code_; // stub method; subclasses will override this to provide concrete implementations 

- (OSType)code;

- (NSAppleEventDescriptor *)desc;

@end


/***********************************/
// concrete classes representing AEDescs of typeType, typeEnumerator, typeProperty, typeKeyword
// note: unlike NSAppleEventDescriptor instances, instances of these classes are fully hashable
// and comparable, so suitable for use as NSDictionary keys.

@interface AEMType : AEMTypeBase

+ (id)typeWithCode:(OSType)code_;

@end


@interface AEMEnum : AEMTypeBase

+ (id)enumWithCode:(OSType)code_;

@end


@interface AEMProperty : AEMTypeBase

+ (id)propertyWithCode:(OSType)code_;

@end


@interface AEMKeyword : AEMTypeBase

+ (id)keywordWithCode:(OSType)code_;

@end

