//
//  reference.h
//  appscript
//
//  Copyright (C) 2007 HAS
//

#import <Foundation/Foundation.h>
#import "application.h"
#import "constant.h"
#import "specifier.h"

typedef enum {
	kASTargetCurrent,
	kASTargetName,
	kASTargetPath,
	kASTargetURL,
	kASTargetPID,
	kASTargetDescriptor,
} ASTargetType;

/*
 * 
 */
@interface ASAppData : AEMCodecs {
	Class aemApplicationClass, constantClass, referenceClass;
	ASTargetType targetType;
	id targetData;
	AEMApplication *target;
}

- (id)initWithApplicationClass:(Class)appClass
				 constantClass:(Class)constClass
				referenceClass:(Class)refClass
					targetType:(ASTargetType)type
					targetData:(id)data;

- (void)connect;

- (id)target; // returns AEMApplication instance or equivalent

@end


/**********************************************************************/
// Command base


@interface ASCommand : NSObject {
	id AS_appData;
	AEMEvent *AS_event;
	AESendMode sendMode;
	int timeout;
}

+ (id)commandWithAppData:(id)appData
			  eventClass:(AEEventClass)classCode
				 eventID:(AEEventID)code
		 directParameter:(id)directParameter
		 parentReference:(id)parentReference;

- (id)initWithAppData:(id)appData
		   eventClass:(AEEventClass)classCode
			  eventID:(AEEventID)code
	  directParameter:(id)directParameter
	  parentReference:(id)parentReference;

// TO DO: attribute methods

- (AEMEvent *)AS_aemEvent;

- (id)send;

- (OSErr)errorNumber;

- (NSString *)errorString;

- (void)raise;

@end


/**********************************************************************/
// Reference base


@interface ASReference : NSObject {
	id AS_appData;
	id AS_aemReference;
}

+ (id)referenceWithAppData:(id)appData aemReference:(id)aemReference;

- (id)initWithAppData:(id)appData aemReference:(id)aemReference;

- (NSAppleEventDescriptor *)AS_packSelf:(id)codecs;

- (id)AS_appData;

- (id)AS_aemReference;

@end


