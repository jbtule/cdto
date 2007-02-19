//
//  connect.h
//  aem
//
//  Copyright (C) 2007 HAS
//

#import <Carbon/Carbon.h>
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


/**********************************************************************/
// find/launch/get PIDs for local applications

#define AEMFindAppWithCreator(code) AEMFindApplication(code, nil, nil)
#define AEMFindAppWithBundleID(bundleID) AEMFindApplication('????', bundleID, nil)
#define AEMFindAppWithName(name) AEMFindApplication('????', nil, name)


extern NSURL* AEMFindApplication(OSType creator, NSString *bundleID, NSString *name);

extern OSStatus AEMFindPIDForApplication(NSURL *fileURL, pid_t *pid);

extern BOOL AEMIsApplicationRunning(NSURL *fileURL);

extern OSStatus AEMLaunchApplication(NSURL *fileURL, 
									 NSAppleEventDescriptor *firstEvent, 
									 LaunchFlags launchFlags,
									 pid_t *pid);


/**********************************************************************/
// create AEAddressDescs

NSAppleEventDescriptor* AEMAddressDescForLocalApplication(NSURL *fileURL);

NSAppleEventDescriptor* AEMAddressDescForLocalProcess(pid_t pid);

NSAppleEventDescriptor* AEMAddressDescForRemoteProcess(NSURL *eppcURL);

NSAppleEventDescriptor* AEMAddressDescForCurrentProcess(void);

