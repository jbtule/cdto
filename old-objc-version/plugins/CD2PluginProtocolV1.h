/*
 *  CD2PluginProtocolV1.h
 *  cd to ...
 *
 *  Created by James Tuley on 2/18/07.
 *  Copyright 2007 Jay Tuley. All rights reserved.
 *
 */
#import <Cocoa/Cocoa.h>

@protocol CD2PluginProtocolV1

-(BOOL)openTermWindowForPath:(NSString*)aPath;

@end