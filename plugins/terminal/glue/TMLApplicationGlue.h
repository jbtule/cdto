/*
 * TMLApplicationGlue.h
 *
 * /Applications/Utilities/Terminal.app
 * 2007-02-16 20:26:03 (CST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"
#import "TMLConstantGlue.h"
#import "TMLReferenceGlue.h"


@interface TMLApplication : TMLReference
- (id)initWithTargetType:(ASTargetType)targetType_ data:(id)targetData_;
- (id)init;
- (id)initWithName:(NSString *)name;
- (id)initWithPath:(NSString *)path;
- (id)initWithURL:(NSURL *)url;
- (id)initWithPID:(pid_t)pid;
- (id)initWithDescriptor:(NSAppleEventDescriptor *)desc;
@end

