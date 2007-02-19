//
//  CD2ITerm.h
//  iterm
//
//  Created by James Tuley on 2/18/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CD2PluginProtocolV1.h"

@interface CD2ITerm : NSObject<CD2PluginProtocolV1> {

}

-(BOOL)openTermWindowForPath:(NSString*)aPath;

@end
