//
//  base.m
//  aem
//
//  Copyright (C) 2007 HAS
//

#import "base.h"


/**********************************************************************/
// AEM reference base (shared by specifiers and tests)

@implementation AEMQuery

/*
 * TO DO:
 *	- (unsigned)hash;
 *	- (BOOL)isEqual:(id)object;
 *	- (NSArray *)comparableData;
 */

// pack specifier into NSAppleEventDescriptor
- (NSAppleEventDescriptor *)packSelf:(id)codecs { // stub method; subclasses will override this
	return nil;
}

// walk reference
- (id)resolve:(id)object { // stub method; subclasses will override this
	return nil;
}
 
@end


/**********************************************************************/


@implementation AEMResolver

- (id)app {
	return self;
}

- (id)con {
	return self;
}

- (id)its {
	return self;
}

@end


/**********************************************************************/


@implementation AEMDummyMethods

- (id)pack:(id)obj {
	return nil;
}

- (id)greaterThan:(id)object {
	return nil;
}

- (id)greaterOrEquals:(id)object {
	return nil;
}

- (id)equals:(id)object {
	return nil;
}

- (id)notEquals:(id)object {
	return nil;
}

- (id)lessThan:(id)object {
	return nil;
}

- (id)lessOrEquals:(id)object {
	return nil;
}

- (id)startsWith:(id)object {
	return nil;
}

- (id)endsWith:(id)object {
	return nil;
}

- (id)contains:(id)object {
	return nil;
}

- (id)isIn:(id)object {
	return nil;
}

- (id)AND:(id)remainingOperands {
	return nil;
}

- (id)OR:(id)remainingOperands {
	return nil;
}

- (id)NOT {
	return nil;
}

@end