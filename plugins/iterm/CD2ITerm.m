//
//  CD2ITerm.m
//  iterm
//
//  Created by James Tuley on 2/18/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "CD2ITerm.h"

@implementation CD2ITerm
-(BOOL)openTermWindowForPath:(NSString*)aPath{
	@try{
        
        [[NSWorkspace sharedWorkspace] openFile:[aPath stringByExpandingTildeInPath] withApplication:@"iTerm.app"];


	}@catch(id test){
		return NO;
	}
	return YES;
}

@end
