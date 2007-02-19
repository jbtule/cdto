//
//  CD2ITerm.m
//  iterm
//
//  Created by James Tuley on 2/18/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "CD2ITerm.h"
#import "ITRMGlue.h"

@implementation CD2ITerm
-(BOOL)openTermWindowForPath:(NSString*)aPath{
	@try{
		ITRMApplication* iterm = [[ITRMApplication alloc] initWithName:@"iterm.app"];
		
		[[iterm activate]send];
		ITRMReference* terminal =[[[iterm make]new_:[ITRMConstant terminal]] send];
		[[[terminal launch_] session:@"Default Session"] send];
		[[[[terminal currentSession] write] text:[NSString stringWithFormat:@"clear;cd '%@'",aPath,nil]]send];
	}@catch(id test){
		return NO;
	}
	return YES;
}

@end
