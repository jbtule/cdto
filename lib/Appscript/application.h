//
//  application.h
//  aem
//
//  Copyright (C) 2007 HAS
//

#import <Foundation/Foundation.h>
#import <Carbon/Carbon.h>
#import "codecs.h"
#import "connect.h"


/**********************************************************************/
// typedefs

typedef OSErr(*AEMCreateProcPtr)(AEEventClass theAEEventClass,
							     AEEventID theAEEventID,
							     const AEAddressDesc *target,
							     AEReturnID returnID,
							     AETransactionID transactionID,
							     AppleEvent *result);


typedef OSStatus(*AEMSendProcPtr)(const AppleEvent *event,
								  AppleEvent *reply,
								  AESendMode sendMode,
								  long timeOutInTicks);


typedef enum {
	kAEMTargetCurrent,
	kAEMTargetFile, // file:// url
	kAEMTargetURL, // should be eppc:// url
	kAEMTargetPID,
	kAEMTargetDescriptor,
} AEMTargetType;


/**********************************************************************/
// Event class
/*
 * Note: clients shouldn't instantiate this directly; instead use AEMApplication methods.
 */

// TO DO: returnID support

@interface AEMEvent : NSObject {
	AEDesc *event;
	id codecs;
	AEMSendProcPtr sendProc;
	// error info
	OSErr errorNumber;
	NSString *errorString;
}

/*
 * Note: new AEMEvent instances are constructed by AEMApplication objects; 
 * clients shouldn't instantiate this class directly.
 */

- (id)initWithEvent:(AppleEvent *)event_
			 codecs:(id)codecs_
		   sendProc:(AEMSendProcPtr)sendProc_;

// Pack event's attributes and parameters, if any.

- (id)setAttributePtr:(void *)dataPtr 
				 size:(Size)dataSize
	   descriptorType:(DescType)typeCode
		   forKeyword:(AEKeyword)key;

- (id)setParameterPtr:(void *)dataPtr 
				 size:(Size)dataSize
	   descriptorType:(DescType)typeCode
		   forKeyword:(AEKeyword)key;

- (id)setAttribute:(id)value forKeyword:(AEKeyword)key;

- (id)setParameter:(id)value forKeyword:(AEKeyword)key;

/*
 * Send event.
 *
 * (Note: a single event can be sent multiple times if desired.)
 *
 * (Note: if an Apple Event Manager/application error occurs, these methods will return nil.
 * Clients should test for this, then use the -errorNumber and -errorString methods to
 * retrieve the error description.
 */

- (id)sendWithMode:(AESendMode)sendMode timeout:(long)timeoutInTicks;

- (id)sendWithTimeout:(long)timeoutInTicks;

- (id)sendWithMode:(AESendMode)sendMode;

- (id)send;

/*
 * Get error information for last event sent, assuming it failed.
 */ 

- (OSErr)errorNumber;

- (NSString *)errorString;

/*
 * Convenience method for raising an exception containing error information
 * for last event sent, assuming it failed.
 */

- (void)raise;

@end


/**********************************************************************/
// Application class

@interface AEMApplication : NSObject {
	AEMTargetType targetType;
	id targetData;
	NSAppleEventDescriptor *addressDesc;
	id defaultCodecs;
	AETransactionID transactionID;
	
	AEMCreateProcPtr createProc;
	AEMSendProcPtr sendProc;
	Class eventClass;
}

- (id)initWithTargetType:(AEMTargetType)targetType_ data:(id)targetData_;

- (id)initWithPath:(NSString *)path;

- (id)initWithURL:(NSURL *)url;

- (id)initWithPID:(pid_t)pid;

- (id)initWithDescriptor:(NSAppleEventDescriptor *)desc;

// clients can call following methods to modify standard create/send behaviours

- (void)setCreateProc:(AEMCreateProcPtr)createProc_;

- (void)setSendProc:(AEMSendProcPtr)sendProc_;

- (void)setEventClass:(Class)eventClass_;

// create new AEMEvent object

- (id)eventWithEventClass:(AEEventClass)classCode
						  eventID:(AEEventID)code
						 returnID:(AEReturnID)returnID
						   codecs:(id)codecs;

- (id)eventWithEventClass:(AEEventClass)classCode
						  eventID:(AEEventID)code
						 returnID:(AEReturnID)returnID;

- (id)eventWithEventClass:(AEEventClass)classCode
						  eventID:(AEEventID)code
						   codecs:(id)codecs;

- (id)eventWithEventClass:(AEEventClass)classCode
						  eventID:(AEEventID)code;

// transaction support

- (void)startTransaction;

- (void)startTransactionWithSession:(id)session;

- (void)endTransaction;

- (void)abortTransaction;
@end
