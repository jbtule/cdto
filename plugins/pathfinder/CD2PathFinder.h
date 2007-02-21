//
//  CD2PathFinder.h
//  pathfinder
//
//  Created by Brian Koponen on 2/19/07.
//  Copyright 2007 Brian Koponen. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CD2PluginProtocolV1.h"

@interface CD2PathFinder : NSObject<CD2PluginProtocolV1> {

}

-(BOOL)openTermWindowForPath:(NSString*)aPath;

@end
