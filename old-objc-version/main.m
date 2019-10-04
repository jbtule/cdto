//
//  main.m
//  cd to ...
//
//  Created by James Tuley on 2/16/07.
//  Copyright Jay Tuley 2007. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CD2PluginProtocolV1.h"
#import "Finder.h"

NSString* getPathToFrontFinderWindow(){
	
	FinderApplication* finder = [SBApplication applicationWithBundleIdentifier:@"com.apple.Finder"];
    
	FinderItem *target = [(NSArray*)[[finder selection]get] firstObject];
    if (target == nil){
        target = [[[[finder FinderWindows] firstObject] target] get];
    }
	
	NSURL* url =[NSURL URLWithString:target.URL];
	NSError* error;
	NSData* bookmark = [NSURL bookmarkDataWithContentsOfURL:url error:nil];
    NSURL* fullUrl = [NSURL URLByResolvingBookmarkData:bookmark
                                        options:NSURLBookmarkResolutionWithoutUI
                                  relativeToURL:nil
                            bookmarkDataIsStale:nil
                                          error:&error];
    if(fullUrl != nil){
        url = fullUrl;
    }
 

	NSString* path = [[url path] stringByExpandingTildeInPath];

    BOOL isDir = NO;
   [[NSFileManager defaultManager] fileExistsAtPath:path isDirectory:&isDir];

    
    
	if(!isDir){
		path = [path stringByDeletingLastPathComponent];
	}

	return path;
}

NSArray* loadPlugins(){
    NSString* pluginPath = [[NSBundle mainBundle] builtInPlugInsPath];
	NSArray* bundlePaths = [NSArray array];
	if (pluginPath != nil) {
		bundlePaths =[NSBundle pathsForResourcesOfType:@"bundle"
											inDirectory:pluginPath];
	}
	NSMutableArray* pluginObjectArrays = [NSMutableArray array];
	NSEnumerator *enumerator = [bundlePaths objectEnumerator];
	NSString* path;
	while ((path = (NSString*)[enumerator nextObject])) {
		NSBundle* bundle =[NSBundle bundleWithPath:path];
		Class pClass =[bundle principalClass];
		if([pClass conformsToProtocol:@protocol(CD2PluginProtocolV1)] &&  [pClass isKindOfClass:[NSObject class]]){
			[pluginObjectArrays addObject:[[[pClass alloc]init]autorelease]];		
		}
	}

	return pluginObjectArrays;
}

int main(int argc, char *argv[])
{
	id pool = [[NSAutoreleasePool alloc] init];
	
	NSString* path;
	@try{
		path = getPathToFrontFinderWindow();
	}@catch(id ex){
		path =[@"~/Desktop" stringByExpandingTildeInPath];
	}
	
	NSArray* plugins =loadPlugins();
	
	NSEnumerator *enumerator = [plugins objectEnumerator];
	id <CD2PluginProtocolV1> plugin;
	while ((plugin = (id <CD2PluginProtocolV1>)[enumerator nextObject])) {
		[plugin openTermWindowForPath:path];
	}
	
	[pool release];
    return 0;
}



