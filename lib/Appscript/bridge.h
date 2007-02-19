//
//  bridge.h
//  appscript bridge
//
//  Copyright (C) 2007 HAS
//

#import <Foundation/Foundation.h>
#import "reference.h"

/**********************************************************************/

@interface ASBAppData : ASAppData {
	id *terminology;
}

- (id)initWithApplicationClass:(Class)appClass
					targetType:(AEMTargetType *)type
					targetData:(id)data
						 terms:(id)terminology_;

- (id)terminology;

@end


/**********************************************************************/


@interface ASBConstant

- (id)initWithName:(NSString *)name;

- (NSAppleEventDescriptor *)AS_packSelf:(id)codecs;

@end


/**********************************************************************/


@interface ASBCommand

@end


/**********************************************************************/

// TO DO: ASBReference should also work as generic reference?


@interface ASBReference : ASReference

- (ASBReference *)property:(NSString *)name;
- (ASBReference *)elements:(NSString *)name;
- (ASBCommand *)command:(NSString *)name;

- (NSObject *)attribute:(NSString *)name; // property/element/command

// ordinal selectors
- (ASBReference *)first;
- (ASBReference *)middle;
- (ASBReference *)last;
- (ASBReference *)any;

// by-index, by-name, by-id selectors
- (ASBReference *)at:(long)index;
- (ASBReference *)byIndex:(id)index; // index is normally NSNumber, but may occasionally be other types
- (ASBReference *)byName:(NSString *)name;
- (ASBReference *)byID:(id)id_;

// by-relative-position selectors
- (ASBReference *)previous:(ASConstant *)class_;
- (ASBReference *)next:(ASConstant *)class_;

// by-range selector
- (ASBReference *)at:(long)fromIndex to:(long)toIndex;
- (ASBReference *)byRange:(id)fromObject to:(id)toObject;

// by-test selector
- (ASBReference *)byTest:(ASBReference *)testReference;

// insertion location selectors
- (ASBReference *)start;
- (ASBReference *)end;
- (ASBReference *)before;
- (ASBReference *)after;

// Comparison and logic tests
- (ASBReference *)greaterThan:(id)object;
- (ASBReference *)greaterOrEquals:(id)object;
- (ASBReference *)equals:(id)object;
- (ASBReference *)notEquals:(id)object;
- (ASBReference *)lessThan:(id)object;
- (ASBReference *)lessOrEquals:(id)object;
- (ASBReference *)startsWith:(id)object;
- (ASBReference *)endsWith:(id)object;
- (ASBReference *)contains:(id)object;
- (ASBReference *)isIn:(id)object;
- (ASBReference *)AND:(id)remainingOperands;
- (ASBReference *)OR:(id)remainingOperands;
- (ASBReference *)NOT;

@end


/**********************************************************************/


@interface ASBApplication

@end

