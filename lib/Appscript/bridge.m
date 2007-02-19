//
//  bridge.m
//  appscript bridge
//
//  Copyright (C) 2007 HAS
//

#import "bridge.h"

/**********************************************************************/


@interface ASBAppData
@end


/**********************************************************************/


@interface ASBConstant
@end


/**********************************************************************/


@implementation ASBCommand
@end


/**********************************************************************/


@implementation ASBReference

// ordinal selectors

- (ASBReference *)first {
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference first]];
}

- (ASBReference *)middle {
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference middle]];
}

- (ASBReference *)last {
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference last]];
}

- (ASBReference *)any {
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference any]];
}

// by-index, by-name, by-id selectors
 
- (ASBReference *)at:(long)index {
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference at: index]];
}

- (ASBReference *)byIndex:(id)index { // index is normally NSNumber, but may occasionally be other types
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference byIndex: index]];
}

- (ASBReference *)byName:(NSString *)name {
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference byName: name]];
}

- (ASBReference *)byID:(id)id_ {
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference byID: id_]];
}

// by-relative-position selectors

- (ASBReference *)previous:(ASConstant *)class_ {
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference previous: [class_ code]]];
}

- (ASBReference *)next:(ASConstant *)class_ {
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference next: [class_ code]]];
}

// by-range selector

- (ASBReference *)at:(long)fromIndex to:(long)toIndex {
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference at: fromIndex to: toIndex]];
}
- (ASBReference *)byRange:(id)fromObject to:(id)toObject { // takes two con-based references, with other values being expanded as necessary
	// note: getting AS_aemReference won't work for ASBReference
	if ([fromObject isKindOfClass: [ASBReference class]])
		fromObject = [fromObject AS_aemReference];
	if ([toObject isKindOfClass: [ASBReference class]])
		toObject = [toObject AS_aemReference];
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference byRange: fromObject to: toObject]];
}

// by-test selector

- (ASBReference *)byTest:(ASBReference *)testReference {
	// note: getting AS_aemReference won't work for ASBReference
	return [[self class] referenceWithAppData: AS_appData
					aemReference: [AS_aemReference byTest: [testReference AS_aemReference]]];
}

// insertion location selectors

- (ASBReference *)start {
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference start]];
}
- (ASBReference *)end {
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference end]];
}
- (ASBReference *)before {
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference before]];
}
- (ASBReference *)after {
	return [[self class] referenceWithAppData: AS_appData
								 aemReference: [AS_aemReference after]];
}

// Comparison and logic tests

- (ASBReference *)greaterThan:(id)object {
    return [ASBReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference greaterThan: object]];
}

- (ASBReference *)greaterOrEquals:(id)object {
    return [ASBReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference greaterOrEquals: object]];
}

- (ASBReference *)equals:(id)object {
    return [ASBReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference equals: object]];
}

- (ASBReference *)notEquals:(id)object {
    return [ASBReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference notEquals: object]];
}

- (ASBReference *)lessThan:(id)object {
    return [ASBReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference lessThan: object]];
}

- (ASBReference *)lessOrEquals:(id)object {
    return [ASBReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference lessOrEquals: object]];
}

- (ASBReference *)startsWith:(id)object {
    return [ASBReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference startsWith: object]];
}

- (ASBReference *)endsWith:(id)object {
    return [ASBReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference endsWith: object]];
}

- (ASBReference *)contains:(id)object {
    return [ASBReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference contains: object]];
}

- (ASBReference *)isIn:(id)object {
    return [ASBReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference isIn: object]];
}

- (ASBReference *)AND:(id)remainingOperands {
    return [ASBReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference AND: remainingOperands]];
}

- (ASBReference *)OR:(id)remainingOperands {
    return [ASBReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference OR: remainingOperands]];
}

- (ASBReference *)NOT {
    return [ASBReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference NOT]];
}

@end


/**********************************************************************/


@implementation ASBApplication
@end

