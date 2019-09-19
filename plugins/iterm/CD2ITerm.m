//
//  CD2ITerm.m
//  iterm
//
//  Created by James Tuley on 2/18/07.
//  Copyright 2007 Jay Tuley. All rights reserved.
//

#import "CD2ITerm.h"

@implementation CD2ITerm
-(BOOL)openTermWindowForPath:(NSString*)aPath{
	@try{
        NSString *iterm2AbsolutePath;
        iterm2AbsolutePath = [[NSWorkspace sharedWorkspace] absolutePathForAppBundleWithIdentifier:@"com.googlecode.iterm2"];

        if (iterm2AbsolutePath)
            [[NSWorkspace sharedWorkspace] openFile:[aPath stringByExpandingTildeInPath]
                                    withApplication:iterm2AbsolutePath
                                      andDeactivate:YES];

	}@catch(id test){
		return NO;
	}
	return YES;
}

@end
