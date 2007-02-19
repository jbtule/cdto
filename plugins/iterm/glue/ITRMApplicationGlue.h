/*
 * ITRMApplicationGlue.h
 *
 * /Volumes/iTerm/iTerm.app
 * 2007-02-18 21:09:47 (CST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"
#import "ITRMConstantGlue.h"
#import "ITRMReferenceGlue.h"


@interface ITRMApplication : ITRMReference
- (id)initWithTargetType:(ASTargetType)targetType_ data:(id)targetData_;
- (id)init;
- (id)initWithName:(NSString *)name;
- (id)initWithPath:(NSString *)path;
- (id)initWithURL:(NSURL *)url;
- (id)initWithPID:(pid_t)pid;
- (id)initWithDescriptor:(NSAppleEventDescriptor *)desc;
@end

