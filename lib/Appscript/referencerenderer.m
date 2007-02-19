//
//  referencerenderer.m
//  appscript
//
//  Copyright (C) 2007 HAS
//

#import "referencerenderer.h"


/**********************************************************************/
// reference renderer base
// TO DO: move this to its own file

@implementation ASReferenceRenderer

// clients should avoid calling this method directly; use +render: instead
- (id)initWithPrefix:(NSString *)prefix_ {
	self = [super init];
	if (!self) return self;
	result = [NSMutableString string];
	prefix = [prefix_ retain];
	return self;
}

- (void)dealloc {
	[prefix release];
	[super dealloc];
}

/*******/

// application-specific subclasses can override this method to provide their own prefix codes
+ (NSString *)render:(id)object {
	return [[self class] render: object withPrefix: @"AS"];
}

// takes an AEM specifier/test object and class name prefix, and returns an autoreleased string
// clients should avoid calling this directly; use +render: instead
+ (NSString *)render:(id)object withPrefix:(NSString *)prefix_ {
	id renderer;
	NSString *string;
	
	renderer = [[[self class] alloc] initWithPrefix: prefix_];
	[object resolve: renderer];
	if ([renderer result])
		string = [renderer result];
	else
		string = [NSString stringWithFormat: @"[%@App AS_newReference: %@]", prefix_, object];
	[renderer release];
	return string;
}

- (NSString *)result {
	return result;
}

/*******/

// method stubs; application-specific subclasses will override to provide code->name translations
- (NSString *)propertyByCode:(OSType)code { 
	return nil;
}

- (NSString *)elementByCode:(OSType)code {
	return nil;
}

/*******/

- (NSString *)format:(id)object {
	if ([object isKindOfClass: [AEMQuery class]])
		return [[self class] render: object];
	else
		return [object description];
}

/*******/

- (ASReferenceRenderer *)property:(OSType)code {
	NSString *name;
	
	name = [self propertyByCode: code];
	if (!name)
		name = [self elementByCode: code];
	if (!name) { // no code->name translation available
		result = nil;
		return nil;
	}
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" %@]", name];
    return self;
}

- (ASReferenceRenderer *)elements:(OSType)code {
	NSString *name;
	
	name = [self elementByCode: code];
	if (!name)
		name = [self propertyByCode: code];
	if (!name) { // no code->name translation available
		result = nil;
		return nil;
	}
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" %@]", name];
    return self;
}


- (ASReferenceRenderer *)first {
	[result insertString: @"[" atIndex: 0];
	[result appendString: @" first]"];
    return self;
}

- (ASReferenceRenderer *)middle {
	[result insertString: @"[" atIndex: 0];
	[result appendString: @" middle]"];
    return self;
}

- (ASReferenceRenderer *)last {
	[result insertString: @"[" atIndex: 0];
	[result appendString: @" last]"];
    return self;
}

- (ASReferenceRenderer *)any {
	[result insertString: @"[" atIndex: 0];
	[result appendString: @" any]"];
    return self;
}

// by-index, by-name, by-id selectors

- (ASReferenceRenderer *)byIndex:(id)index {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" byIndex: %@]", [self format: index]];
    return self;
}

- (ASReferenceRenderer *)byName:(NSString *)name {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" byName: %@]", [self format: name]];
    return self;
}

- (ASReferenceRenderer *)byID:(id)id_ {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" byID: %@]", [self format: id_]];
    return self;
}

// by-relative-position selectors

- (ASReferenceRenderer *)previous:(ASConstant *)class_ {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" previous: %@]", [self format: class_]];
    return self;
}

- (ASReferenceRenderer *)next:(ASConstant *)class_ {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" next: %@]", [self format: class_]];
    return self;
}

// by-range selector

- (ASReferenceRenderer *)byRange:(id)fromObject to:(id)toObject {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" byRange: %@ to: %@]",
						  [self format: fromObject],
						  [self format: toObject]];
    return self;
}

// by-test selector

- (ASReferenceRenderer *)byTest:(ASReferenceRenderer *)testReference {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" byTest: %@]", [self format: testReference]];
    return self;
}

// insertion location selectors

- (ASReferenceRenderer *)start {
	[result insertString: @"[" atIndex: 0];
	[result appendString: @" start]"];
    return self;
}

- (ASReferenceRenderer *)end {
	[result insertString: @"[" atIndex: 0];
	[result appendString: @" end]"];
    return self;
}

- (ASReferenceRenderer *)before {
	[result insertString: @"[" atIndex: 0];
	[result appendString: @" before]"];
    return self;
}

- (ASReferenceRenderer *)after {
	[result insertString: @"[" atIndex: 0];
	[result appendString: @" after]"];
    return self;
}

// test clause renderers

- (ASReferenceRenderer *)greaterThan:(id)object {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" greaterThan: %@]", [self format: object]];
    return self;
}

- (ASReferenceRenderer *)greaterOrEquals:(id)object {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" greaterOrEquals: %@]", [self format: object]];
    return self;
}

- (ASReferenceRenderer *)equals:(id)object {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" equals: %@]", [self format: object]];
    return self;
}

- (ASReferenceRenderer *)notEquals:(id)object {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" notEquals: %@]", [self format: object]];
    return self;
}

- (ASReferenceRenderer *)lessThan:(id)object {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" lessThan: %@]", [self format: object]];
    return self;
}

- (ASReferenceRenderer *)lessOrEquals:(id)object {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" lessOrEquals: %@]", [self format: object]];
    return self;
}

- (ASReferenceRenderer *)startsWith:(id)object {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" startsWith: %@]", [self format: object]];
    return self;
}

- (ASReferenceRenderer *)endsWith:(id)object {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" endsWith: %@]", [self format: object]];
    return self;
}

- (ASReferenceRenderer *)contains:(id)object {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" contains: %@]", [self format: object]];
    return self;
}

- (ASReferenceRenderer *)isIn:(id)object {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" isIn: %@]", [self format: object]];
    return self;
}

- (ASReferenceRenderer *)AND:(id)remainingOperands {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" AND: %@]", [self format: remainingOperands]];
    return self;
}

- (ASReferenceRenderer *)OR:(id)remainingOperands {
	[result insertString: @"[" atIndex: 0];
	[result appendFormat: @" OR: %@]", [self format: remainingOperands]];
    return self;
}

- (ASReferenceRenderer *)NOT {
	[result insertString: @"[" atIndex: 0];
	[result appendString: @" NOT]"];
    return self;
}


// reference roots

- (ASReferenceRenderer *)app {
	[result appendFormat: @"%@App", prefix];
    return self;
}

- (ASReferenceRenderer *)con {
	[result appendFormat: @"%@Con", prefix];
    return self;
}

- (ASReferenceRenderer *)its {
	[result appendFormat: @"%@Its", prefix];
    return self;
}

@end
