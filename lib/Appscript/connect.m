//
//  connect.m
//  aem
//
//  Copyright (C) 2007 HAS
//

#import "connect.h"



/**********************************************************************/
// find/launch/get PIDs for local applications

// TO DO: better error reporting?

/*
 * Find application by creator code, bundle ID and/or file name.
 */
extern NSURL* AEMFindApplication(OSType creator, NSString *bundleID, NSString *name) {
	OSErr err;
	CFURLRef outAppURL;
	
	err = LSFindApplicationForInfo(creator,
								   (CFStringRef)bundleID,
								   (CFStringRef)name,
								   NULL,
								   &outAppURL);
	if (err) return nil;
	return (NSURL *)outAppURL;
}


/*
 * Get Unix process ID of first process launched from specified application.
 */
extern OSStatus AEMFindPIDForApplication(NSURL *fileURL, pid_t *pid) { // TO DO: extern?
	OSStatus err;
	FSRef desired, found;
	ProcessSerialNumber psn = {0, kNoProcess};

	if (!CFURLGetFSRef((CFURLRef)fileURL, &desired)) return errFSBadFSRef;
	do {
		err = GetNextProcess(&psn);
		if (err) return err; // -600 = process not found
		err = GetProcessBundleLocation(&psn, &found);
	} while (err || FSCompareFSRefs(&desired, &found));
	err = GetProcessPID(&psn, pid);
	if (err) return err;
	return noErr;
}


/*
 * Check if specified application is running.
 */
extern BOOL AEMIsApplicationRunning(NSURL *fileURL) {
	OSStatus err;
	FSRef desired, found;
	ProcessSerialNumber psn = {0, kNoProcess};

	if (!CFURLGetFSRef((CFURLRef)fileURL, &desired)) return NO;
	do {
		err = GetNextProcess(&psn);
		if (err) return NO; // -600 = process not found
		err = GetProcessBundleLocation(&psn, &found);
	} while (err || FSCompareFSRefs(&desired, &found));
	return YES;
}


/*
 * Launch an application.
 *
 * (Note: this uses older Process Manager API; could use LSLaunchApplication
 * instead if 10.3 compatibility isn't needed.)
 */
extern OSStatus AEMLaunchApplication(NSURL *fileURL, 
									 NSAppleEventDescriptor *firstEvent, 
									 LaunchFlags launchFlags,
									 pid_t *pid) {
	OSStatus err;
	FSRef fsRef;
	FSSpec fss;
	AEDesc paraDesc;
	Size paraSize;
	AppParametersPtr paraData;
	ProcessSerialNumber psn;
	LaunchParamBlockRec launchParams;
	
	// Get FSSpec from NSURL
	if (!CFURLGetFSRef((CFURLRef)fileURL, &fsRef)) return fnfErr;
	err = FSGetCatalogInfo(&fsRef, kFSCatInfoNone, NULL, NULL, &fss, NULL);
	if (err) return err;
	// Get Apple event data
	if (firstEvent) {
		err = AECoerceDesc([firstEvent aeDesc], typeAppParameters, &paraDesc);
		paraSize = AEGetDescDataSize(&paraDesc);
		paraData = (AppParametersPtr)NewPtr(paraSize); // TO DO: DisposePtr
		if (!paraData) return memFullErr;
		err = AEGetDescData(&paraDesc, paraData, paraSize);
		if (err) return err;
	} else
		paraData = NULL; // default event is aevtoapp
	launchParams.launchBlockID = extendedBlock;
	launchParams.launchEPBLength = extendedBlockLen;
	launchParams.launchFileFlags = 0;
	launchParams.launchControlFlags = launchFlags;
	launchParams.launchAppSpec = &fss;
	launchParams.launchAppParameters = paraData;
	err = LaunchApplication(&launchParams);
	if (err) return err; // Can't launch application.
	psn = launchParams.launchProcessSN;
	err = GetProcessPID(&psn, pid);
	if (err) return err;
	return noErr;
}


/**********************************************************************/
// make AEAddressDescs

/*
 * Will start application if not already running
 */
NSAppleEventDescriptor* AEMAddressDescForLocalApplication(NSURL *fileURL) {
	OSStatus err;
	pid_t pid;

	err = AEMFindPIDForApplication(fileURL, &pid);
	if (err) {
		if (err != -600) return nil;
		err = AEMLaunchApplication(fileURL, 
								   nil,
								   launchContinue | launchNoFileFlags | launchDontSwitch,
								   &pid);
		if (err) return nil;
	}
	return AEMAddressDescForLocalProcess(pid);
}


NSAppleEventDescriptor* AEMAddressDescForLocalProcess(pid_t pid) {
	return [NSAppleEventDescriptor descriptorWithDescriptorType: typeKernelProcessID
														  bytes: &pid
														 length: sizeof(pid)];
}									  


NSAppleEventDescriptor* AEMAddressDescForRemoteProcess(NSURL *eppcURL) {
	CFDataRef data;
	NSAppleEventDescriptor *desc;
	
	data = CFURLCreateData(NULL, (CFURLRef)eppcURL, kCFStringEncodingUTF8, YES);
	desc = [NSAppleEventDescriptor descriptorWithDescriptorType: typeApplicationURL
														   data: (NSData *)data];
	CFRelease(data);
	return desc;
}


NSAppleEventDescriptor* AEMAddressDescForCurrentProcess(void) {
	ProcessSerialNumber psn = {0, kCurrentProcess};
	
	return [NSAppleEventDescriptor descriptorWithDescriptorType: typeProcessSerialNumber
														  bytes: &psn
														 length: sizeof(psn)];
}

