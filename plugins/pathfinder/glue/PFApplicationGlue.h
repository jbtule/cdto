/*
 * PFApplicationGlue.h
 *
 * /Applications/Path Finder.app
 * 2007-02-19 14:24:27 (EST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"
#import "PFConstantGlue.h"
#import "PFReferenceGlue.h"


@interface PFApplication : PFReference
- (id)initWithTargetType:(ASTargetType)targetType_ data:(id)targetData_;
- (id)init;
- (id)initWithName:(NSString *)name;
- (id)initWithPath:(NSString *)path;
- (id)initWithURL:(NSURL *)url;
- (id)initWithPID:(pid_t)pid;
- (id)initWithDescriptor:(NSAppleEventDescriptor *)desc;
@end

