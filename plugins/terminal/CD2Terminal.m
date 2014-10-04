//
//  CD2Terminal.m
//  terminal
//
//  Created by James Tuley on 2/18/07.
//  Copyright 2007 Jay Tuley. All rights reserved.
//

#import "CD2Terminal.h"

#import "Terminal.h"

@implementation CD2Terminal

-(BOOL)openTermWindowForPath:(NSString*)aPath{
	@try{


	
		TerminalApplication* terminal = [SBApplication applicationWithBundleIdentifier:@"com.apple.Terminal"];

        	
        [terminal activate];
       
	
		
		
		[terminal open:[NSArray arrayWithObject:aPath]];
		return YES;
	}@catch(id ue) {
		
		return NO;
	}@finally{
		return NO;
	}
}

@end
