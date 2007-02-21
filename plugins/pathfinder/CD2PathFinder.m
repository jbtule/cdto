//
//  CD2PathFinder.m
//  pathfinder
//
//  Created by Brian Koponen on 2/19/07.
//  Copyright 2007 Brian Koponen. All rights reserved.
//

#import "CD2PathFinder.h"
#import "PFGlue.h"

@implementation CD2PathFinder

-(BOOL)openTermWindowForPath:(NSString*)aPath{
	@try{
		PFApplication* pathfinder = [[PFApplication alloc] initWithName:@"Path Finder.app"];
		
		[[pathfinder activate] send];
        
        [[pathfinder PFOpen:aPath] send];
    }
    @catch(id test){
		return NO;
	}
    
	return YES;
}

@end
