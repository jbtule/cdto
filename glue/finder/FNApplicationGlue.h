/*
 * FNApplicationGlue.h
 *
 * /System/Library/CoreServices/Finder.app
 * 2007-02-16 20:30:45 (CST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"
#import "FNConstantGlue.h"
#import "FNReferenceGlue.h"


@interface FNApplication : FNReference
- (id)initWithTargetType:(ASTargetType)targetType_ data:(id)targetData_;
- (id)init;
- (id)initWithName:(NSString *)name;
- (id)initWithPath:(NSString *)path;
- (id)initWithURL:(NSURL *)url;
- (id)initWithPID:(pid_t)pid;
- (id)initWithDescriptor:(NSAppleEventDescriptor *)desc;
@end

