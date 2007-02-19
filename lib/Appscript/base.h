//
//  base.h
//  aem
//
//  Copyright (C) 2007 HAS
//


#import <Foundation/Foundation.h>
#import <Carbon/Carbon.h>


/**********************************************************************/
// AEM reference base (shared by specifiers and tests)

@interface AEMQuery : NSObject {
	NSAppleEventDescriptor *cachedDesc;
}

/*
 * TO DO:
 *	- (unsigned)hash;
 *	- (BOOL)isEqual:(id)object;
 *	- (NSArray *)comparableData;
 */

- (NSAppleEventDescriptor *)packSelf:(id)codecs;

- (id)resolve:(id)object;

@end


/**********************************************************************/


@interface AEMResolver // TO DO: finish

- (id)app;

- (id)con;

- (id)its;

@end


/**********************************************************************/


@interface AEMDummyMethods
// avoid compiler complaining about methods defined in downstream
// files not being found when used in upstream files

- (id)pack:(id)obj; 

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

@end