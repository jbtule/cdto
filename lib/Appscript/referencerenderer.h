//
//  referencerenderer.h
//  appscript
//
//  Copyright (C) 2007 HAS
//

#import <Foundation/Foundation.h>
#import "reference.h"

/**********************************************************************/
// reference renderer base

@interface ASReferenceRenderer : NSObject {
	NSString *prefix;
	NSMutableString *result;
}

- (id)initWithPrefix:(NSString *)prefix_;

+ (NSString *)render:(id)object;

+ (NSString *)render:(id)object withPrefix:(NSString *)prefix_;

- (NSString *)result;

/*******/

- (NSString *)propertyByCode:(OSType)code;
- (NSString *)elementByCode:(OSType)code;

/*******/

- (NSString *)format:(id)object;

/*******/

- (ASReferenceRenderer *)property:(OSType)code;
- (ASReferenceRenderer *)elements:(OSType)code;

- (ASReferenceRenderer *)first;
- (ASReferenceRenderer *)middle;
- (ASReferenceRenderer *)last;
- (ASReferenceRenderer *)any;

- (ASReferenceRenderer *)byIndex:(id)index;
- (ASReferenceRenderer *)byName:(NSString *)name;
- (ASReferenceRenderer *)byID:(id)id_;

- (ASReferenceRenderer *)previous:(ASConstant *)class_;
- (ASReferenceRenderer *)next:(ASConstant *)class_;

- (ASReferenceRenderer *)byRange:(id)fromObject to:(id)toObject;
- (ASReferenceRenderer *)byTest:(ASReferenceRenderer *)testReference;

- (ASReferenceRenderer *)start;
- (ASReferenceRenderer *)end;
- (ASReferenceRenderer *)before;
- (ASReferenceRenderer *)after;

- (ASReferenceRenderer *)greaterThan:(id)object;
- (ASReferenceRenderer *)greaterOrEquals:(id)object;
- (ASReferenceRenderer *)equals:(id)object;
- (ASReferenceRenderer *)notEquals:(id)object;
- (ASReferenceRenderer *)lessThan:(id)object;
- (ASReferenceRenderer *)lessOrEquals:(id)object;
- (ASReferenceRenderer *)startsWith:(id)object;
- (ASReferenceRenderer *)endsWith:(id)object;
- (ASReferenceRenderer *)contains:(id)object;
- (ASReferenceRenderer *)isIn:(id)object;
- (ASReferenceRenderer *)AND:(id)remainingOperands;
- (ASReferenceRenderer *)OR:(id)remainingOperands;
- (ASReferenceRenderer *)NOT;

- (ASReferenceRenderer *)app;
- (ASReferenceRenderer *)con;
- (ASReferenceRenderer *)its;

@end

