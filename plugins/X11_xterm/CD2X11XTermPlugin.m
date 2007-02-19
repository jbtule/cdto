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
		[[NSWorkspace sharedWorkspace] launchApplication:@"X11.app"];
		NSTask* task =[[NSTask alloc]init];
		[task setCurrentDirectoryPath:aPath];
		NSMutableDictionary* enviornment =[[[[NSProcessInfo processInfo] environment] mutableCopy]autorelease];
		
		[enviornment setObject:@":0.0" forKey:@"DISPLAY"];
		
		[task setEnvironment:enviornment];
		
		[task setLaunchPath:[[NSBundle bundleForClass:[self class]] pathForResource:@"LaunchXTerm" ofType:@"sh"]];

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
