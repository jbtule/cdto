//
//  CD2X11XTermPlugin.m
//  X11_xterm
//
//  Created by James Tuley on 2/18/07.
//  Copyright 2007 Jay Tuley. All rights reserved.
//

#import "CD2X11XTermPlugin.h"


@implementation CD2X11XTermPlugin

-(BOOL)openTermWindowForPath:(NSString*)aPath{
	@try{
		if(![[NSWorkspace sharedWorkspace] launchApplication:@"X11.app"]){
            [[NSWorkspace sharedWorkspace] launchApplication:@"XQuartz.app"];
        }
		NSTask* task =[[NSTask alloc]init];
		[task setCurrentDirectoryPath:aPath];
		NSMutableDictionary* enviornment =[[[[NSProcessInfo processInfo] environment] mutableCopy]autorelease];
				
		[task setEnvironment:enviornment];
		
        NSString* path = @"/usr/X11R6/bin/xterm";
        if(![[NSFileManager defaultManager] fileExistsAtPath:path isDirectory:NULL]){
            path = @"/opt/X11/bin/xterm";
        }
		[task setLaunchPath:path];

		[task setStandardOutput:[NSFileHandle fileHandleWithStandardOutput]];	

		[task setStandardError:[NSFileHandle fileHandleWithStandardOutput]];	
		[task launch];
		
	}
	@catch(id ex){
		return NO;
	}

	return YES;
}

@end
