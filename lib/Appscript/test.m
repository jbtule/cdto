//
//  test.m
//  aem
//
//  Copyright (C) 2007 HAS
//

#import "test.h"


/**********************************************************************/
// initialise constants


#define ENUMERATOR(name) \
		descData = kAE##name; \
		kEnum##name = [[NSAppleEventDescriptor alloc] initWithDescriptorType:typeEnumerated \
														 bytes:&descData \
														length:sizeof(descData)];


// comparison tests
static NSAppleEventDescriptor *kEnumGreaterThan,
							  *kEnumGreaterThanEquals,
							  *kEnumEquals,
							  *kEnumLessThan,
							  *kEnumLessThanEquals,
							  *kEnumBeginsWith,
							  *kEnumEndsWith,
							  *kEnumContains;

// logical tests
static NSAppleEventDescriptor *kEnumAND,
							  *kEnumOR,
							  *kEnumNOT;


// blank record used by -packSelf: to construct test descriptors
static NSAppleEventDescriptor *kNullRecord;


void initTestModule(void) { // called automatically
	// comparison tests
	OSType descData;
	
	ENUMERATOR(GreaterThan);
	ENUMERATOR(GreaterThanEquals);
	ENUMERATOR(Equals);
	ENUMERATOR(LessThan);
	ENUMERATOR(LessThanEquals);
	ENUMERATOR(BeginsWith);
	ENUMERATOR(EndsWith);
	ENUMERATOR(Contains);
	// logical tests
	ENUMERATOR(AND);
	ENUMERATOR(OR);
	ENUMERATOR(NOT);
	// miscellaneous
	kNullRecord = [[NSAppleEventDescriptor alloc] initRecordDescriptor];
}

void disposeTestModule(void) {
	// comparison tests
	[kEnumGreaterThan release];
	[kEnumGreaterThanEquals release];
	[kEnumEquals release];
	[kEnumLessThan release];
	[kEnumLessThanEquals release];
	[kEnumBeginsWith release];
	[kEnumEndsWith release];
	[kEnumContains release];
	// logical tests
	[kEnumAND release];
	[kEnumOR release];
	[kEnumNOT release];
	// miscellaneous
	[kNullRecord release];
}


/**********************************************************************/
// Abstract base class for all comparison and logic test classes

@implementation AEMTest : AEMQuery

// takes a single test clause or an array of test clauses
// note: currently performs no runtime type checks to ensure arg is/contains
// AEMTest instances only
- (id)AND:(id)remainingOperands { 
	NSMutableArray *allOperands;
	
	allOperands = [NSArray arrayWithObject: self];
	if ([remainingOperands isKindOfClass: [NSArray class]])
		[allOperands addObjectsFromArray: remainingOperands];
	else
		[allOperands addObject: remainingOperands];
	return [[[AEMAND alloc] initWithOperands: allOperands] autorelease];
}

// takes a single test clause or an array of test clauses
// note: currently performs no runtime type checks to ensure arg is/contains
// AEMTest instances only
- (id)OR:(id)remainingOperands {
	NSMutableArray *allOperands;
	
	allOperands = [NSArray arrayWithObject: self];
	if ([remainingOperands isKindOfClass: [NSArray class]])
		[allOperands addObjectsFromArray: remainingOperands];
	else
		[allOperands addObject: remainingOperands];
	return [[[AEMOR alloc] initWithOperands: allOperands] autorelease];
}

- (id)NOT {
	return [[[AEMNOT alloc] initWithOperands: [NSArray arrayWithObject: self]] autorelease];
}

- (NSString *)formatString { // stub method; subclasses will override
	return nil;
}

- (NSAppleEventDescriptor *)operator { // stub method; subclasses will override
	return nil;
}

@end


/**********************************************************************/
// Comparison tests

// Abstract base class for all comparison test classes
@implementation AEMComparisonBase

- (id)initWithOperand1:(id)operand1_ operand2:(id)operand2_ {
	self = [super init];
	if (!self) return self;
	[operand1_ retain];
	[operand2_ retain];
	operand1 = operand1_;
	operand2 = operand2_;
	return self;
}

- (NSString *)description {
	return [NSString stringWithFormat: [self formatString], operand1, operand2];
}

- (id)resolve:(id)object {
	return nil;
}

- (NSAppleEventDescriptor *)packSelf:(id)codecs {
	if (!cachedDesc) {
		cachedDesc = [kNullRecord coerceToDescriptorType: typeCompDescriptor];
		[cachedDesc setDescriptor: [codecs pack: operand1] forKeyword: keyAEObject1];
		[cachedDesc setDescriptor: [self operator] forKeyword: keyAECompOperator];
		[cachedDesc setDescriptor: [codecs pack: operand2] forKeyword: keyAEObject2];
	}
	return cachedDesc;
}

@end

// comparison tests
// Note: clients should not instantiate these classes directly;
// instead, call the appropriate methods on specifier objects
// of AEMIts-based references

@implementation AEMGreaterThan

- (id)formatString {
	return @"[%@ greaterThan: %@]";
}

- (NSAppleEventDescriptor *)operator {
	return kEnumGreaterThan;
}

- (id)resolve:(id)object {
	return [[operand1 resolve: object] greaterThan: operand2];
}

@end


@implementation AEMGreaterOrEquals

- (id)formatString {
	return @"[%@ greaterOrEquals: %@]";
}

- (NSAppleEventDescriptor *)operator {
	return kEnumGreaterThanEquals;
}

- (id)resolve:(id)object {
	return [[operand1 resolve: object] greaterOrEquals: operand2];
}

@end


@implementation AEMEquals

- (id)formatString {
	return @"[%@ equals: %@]";
}

- (NSAppleEventDescriptor *)operator {
	return kEnumEquals;
}

- (id)resolve:(id)object {
	return [[operand1 resolve: object] equals: operand2];
}

@end


@implementation AEMNotEquals

- (id)formatString {
	return @"[%@ notEquals: %@]";
}

- (NSAppleEventDescriptor *)packSelf:(id)codecs {
	if (!cachedDesc)
		cachedDesc = [[[operand1 equals: operand2] NOT] packSelf: codecs];
	return cachedDesc;
}

- (id)resolve:(id)object {
	return [[operand1 resolve: object] notEquals: operand2];
}

@end


@implementation AEMLessThan

- (id)formatString {
	return @"[%@ lessThan: %@]";
}

- (NSAppleEventDescriptor *)operator {
	return kEnumLessThan;
}

- (id)resolve:(id)object {
	return [[operand1 resolve: object] lessThan: operand2];
}

@end


@implementation AEMLessOrEquals

- (id)formatString {
	return @"[%@ lessOrEquals: %@]";
}

- (NSAppleEventDescriptor *)operator {
	return kEnumLessThanEquals;
}

- (id)resolve:(id)object {
	return [[operand1 resolve: object] lessOrEquals: operand2];
}

@end


@implementation AEMStartsWith

- (id)formatString {
	return @"[%@ startsWith: %@]";
}

- (NSAppleEventDescriptor *)operator {
	return kEnumBeginsWith;
}

- (id)resolve:(id)object {
	return [[operand1 resolve: object] startsWith: operand2];
}

@end


@implementation AEMEndsWith

- (id)formatString {
	return @"[%@ endsWith: %@]";
}

- (NSAppleEventDescriptor *)operator {
	return kEnumEndsWith;
}

- (id)resolve:(id)object {
	return [[operand1 resolve: object] endsWith: operand2];
}

@end


@implementation AEMContains

- (id)formatString {
	return @"[%@ contains: %@]";
}

- (NSAppleEventDescriptor *)operator {
	return kEnumContains;
}

- (id)resolve:(id)object {
	return [[operand1 resolve: object] contains: operand2];
}

@end


@implementation AEMIsIn

- (id)formatString {
	return @"[%@ isIn: %@]";
}

- (NSAppleEventDescriptor *)packSelf:(id)codecs {
	if (!cachedDesc) {
		cachedDesc = [kNullRecord coerceToDescriptorType: typeCompDescriptor];
		[cachedDesc setDescriptor: [codecs pack: operand2] forKeyword: keyAEObject1];
		[cachedDesc setDescriptor: [self operator] forKeyword: keyAECompOperator];
		[cachedDesc setDescriptor: [codecs pack: operand1] forKeyword: keyAEObject2];
	}
	return cachedDesc;
}

- (id)resolve:(id)object {
	return [[operand1 resolve: object] isIn: operand2];
}

@end


/**********************************************************************/
// Logical tests

// Abstract base class for all logical test classes
@implementation AEMLogicalBase

- (id)initWithOperands:(NSArray *)operands_ {
	self = [super init];
	if (!self) return self;
	[operands_ retain];
	operands = operands_;
	return self;
}

- (NSString *)description {
	id target;
	NSMutableArray *rest;
	NSString *result;
	
	target = [operands objectAtIndex: 0];
	rest = [[NSMutableArray alloc] initWithArray: operands];
	[rest removeObjectAtIndex: 0];
	result = [NSString stringWithFormat: [self formatString], target, rest];
	[rest release];
	return result;
}

- (id)resolve:(id)object {
	id target, result;
	NSMutableArray *rest;
	
	target = [[operands objectAtIndex: 0] resolve: object];
	rest = [[NSMutableArray alloc] initWithArray: operands];
	[rest removeObjectAtIndex: 0];
	result = [self resolveWithTarget:target rest:rest];
	[rest release];
	return result;
}

- (NSAppleEventDescriptor *)packSelf:(id)codecs {
	if (!cachedDesc) {
		cachedDesc = [kNullRecord coerceToDescriptorType: typeLogicalDescriptor];
		[cachedDesc setDescriptor: [self operator] forKeyword: keyAELogicalOperator];
		[cachedDesc setDescriptor: [codecs pack: operands] forKeyword: keyAELogicalTerms];
	}
	return cachedDesc;	
}

- (id)resolveWithTarget:(id)target rest:(NSArray *)rest { // stub method; subclasses will override
	return nil;
}

@end

// logical tests
// Note: clients should not instantiate these classes directly

@implementation AEMAND

- (NSString *)formatString {
	return @"[%@ AND: %@]";
}

- (NSAppleEventDescriptor *)operator {
	return kEnumAND;
}
- (id)resolveWithTarget:(id)target rest:(NSArray *)rest {
	return [target AND: rest];
}

@end


@implementation AEMOR

- (NSString *)formatString {
	return @"[%@ OR: %@]";
}

- (NSAppleEventDescriptor *)operator {
	return kEnumOR;
}

- (id)resolveWithTarget:(id)target rest:(NSArray *)rest {
	return [target OR: rest];
}

@end


@implementation AEMNOT

- (NSString *)description {
	return [NSString stringWithFormat: @"[%@ NOT]", [operands objectAtIndex: 0]];
}

- (NSAppleEventDescriptor *)operator {
	return kEnumNOT;
}

- (id)resolve:(id)object {
	return [[[operands objectAtIndex: 0] resolve: object] NOT];
}

@end

