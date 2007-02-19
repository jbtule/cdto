//
//  specifier.h
//  aem
//
//  Copyright (C) 2007 HAS
//

#import <Foundation/Foundation.h>
#import <Carbon/Carbon.h>
#import "base.h"
#import "test.h"

/**********************************************************************/


#define AEMApp [AEMApplicationRoot applicationRoot]
#define AEMCon [AEMCurrentContainerRoot currentContainerRoot]
#define AEMIts [AEMObjectBeingExaminedRoot objectBeingExaminedRoot]


/**********************************************************************/
// initialise constants

void initSpecifierModule(void); // called automatically

void disposeSpecifierModule(void);


/**********************************************************************/
// Specifier base

/*
 * Abstract base class for all object specifier classes.
 */
@interface AEMSpecifier : AEMQuery {
	AEMSpecifier *container;
	id key;
}

- (id)initWithContainer:(AEMSpecifier *)container_ key:(id)key_;

// reserved methods

- (id)root;
- (id)trueSelf;

@end


/**********************************************************************/
// Insertion location specifier

/*
 * A reference to an element insertion point.
 */
@interface AEMInsertionSpecifier : AEMSpecifier
@end


/**********************************************************************/
// Position specifier base

/*
 * All property and element reference forms inherit from this abstract class.
 */
@interface AEMPositionSpecifierBase : AEMSpecifier {
	OSType wantCode;
}

- (id)initWithContainer:(AEMSpecifier *)container_ key:(id)key_ wantCode:(OSType)wantCode_;

// Comparison and logic tests

- (id)greaterThan:(id)object;
- (id)greaterOrEquals:(id)object;
- (id)equals:(id)object;
- (id)notEquals:(id)object;
- (id)lessThan:(id)object;
- (id)lessOrEquals:(id)object;
- (id)startsWith:(id)object;
- (id)endsWith:(id)object;
- (id)contains:(id)object;
- (id)isIn:(id)object;

- (id)AND:(id)remainingOperands;
- (id)OR:(id)remainingOperands;
- (id)NOT;

// Insertion location selectors

- (AEMInsertionSpecifier *)start;
- (AEMInsertionSpecifier *)end;
- (AEMInsertionSpecifier *)before;
- (AEMInsertionSpecifier *)after;

// property and all-element specifiers

// TO DO: specific return types
- (id)property:(OSType)propertyCode;
- (id)userProperty:(NSString *)propertyName;
- (id)elements:(OSType)classCode;

// by-relative-position selectors

// TO DO: specific return types
- (id)previous:(OSType)classCode;
- (id)next:(OSType)classCode;

@end


/**********************************************************************/
// Properties

/*
 * Specifier identifying an application-defined property
 */
@interface AEMPropertySpecifier : AEMPositionSpecifierBase
@end


@interface AEMUserPropertySpecifier : AEMPositionSpecifierBase
@end


/**********************************************************************/
// Single elements

/*
 * Abstract base class for all single element specifiers
 */
@interface AEMSingleElementSpecifierBase : AEMPositionSpecifierBase
@end

/*
 * Specifiers identifying a single element by name, index, id or named ordinal
 */
@interface AEMElementByNameSpecifier : AEMSingleElementSpecifierBase
@end

@interface AEMElementByIndexSpecifier : AEMSingleElementSpecifierBase
@end

@interface AEMElementByIDSpecifier : AEMSingleElementSpecifierBase
@end

@interface AEMElementByOrdinalSpecifier : AEMSingleElementSpecifierBase
@end

@interface AEMElementByRelativePositionSpecifier : AEMPositionSpecifierBase
@end


/**********************************************************************/
// Multiple elements

/*
 * Base class for all multiple element specifiers.
 */
@interface AEMMultipleElementsSpecifierBase : AEMPositionSpecifierBase 

// ordinal selectors

- (AEMElementByOrdinalSpecifier *)first;
- (AEMElementByOrdinalSpecifier *)middle;
- (AEMElementByOrdinalSpecifier *)last;
- (AEMElementByOrdinalSpecifier *)any;

// by-index, by-name, by-id selectors
 
- (AEMElementByIndexSpecifier *)at:(long)index;
- (AEMElementByIndexSpecifier *)byIndex:(id)index; // normally NSNumber, but may occasionally be other types
- (AEMElementByNameSpecifier *)byName:(NSString *)name;
- (AEMElementByIDSpecifier *)byID:(id)id_;

// by-range selector

// TO DO: specific return type
- (id)at:(long)startIndex to:(long)endIndex;
- (id)byRange:(id)startReference to:(id)endReference; // takes two con-based references, with other values being expanded as necessary

// by-test selector

- (id)byTest:(id)testReference; // TO DO: specific param, return types

@end


@interface AEMElementsByRangeSpecifier : AEMMultipleElementsSpecifierBase {
	id startReference, endReference;
}

- (id)initWithContainer:(AEMSpecifier *)container_
				  start:(id)startReference_
					end:(id)endReference_
			   wantCode:(OSType)wantCode_;

@end


@interface AEMElementsByTestSpecifier : AEMMultipleElementsSpecifierBase
@end


@interface AEMAllElementsSpecifier : AEMMultipleElementsSpecifierBase
@end


/**********************************************************************/
// Multiple element shim

@interface AEMUnkeyedElementsShim : AEMSpecifier {
	OSType wantCode;
}

- (id)initWithContainer:(AEMSpecifier *)container_ wantCode:(OSType)wantCode_;

@end


/**********************************************************************/
// Reference roots

@interface AEMReferenceRootBase : AEMPositionSpecifierBase

// note: clients should avoid calling this initialiser directly; 
// use AEMApp, AEMCon, AEMIts macros instead.
- (id)initWithDescType:(DescType)descType;

@end

@interface AEMApplicationRoot : AEMReferenceRootBase

// note: clients should avoid calling this initialiser directly; 
// use AEMApp, AEMCon, AEMIts macros instead.
+ (id)applicationRoot;

@end

@interface AEMCurrentContainerRoot : AEMReferenceRootBase

// note: clients should avoid calling this initialiser directly; 
// use AEMApp, AEMCon, AEMIts macros instead.
+ (id)currentContainerRoot;

@end

@interface AEMObjectBeingExaminedRoot : AEMReferenceRootBase

// note: clients should avoid calling this initialiser directly; 
// use AEMApp, AEMCon, AEMIts macros instead.
+ (id)objectBeingExaminedRoot;

@end


