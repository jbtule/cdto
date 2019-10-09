//
//  main.m
//  cd to ...
//
//  Created by James Tuley on 10/9/19.
//  Copyright © 2019 Jay Tuley. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <ScriptingBridge/ScriptingBridge.h>

#import "Finder.h"
#import "Terminal.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        FinderApplication* finder = [SBApplication applicationWithBundleIdentifier:@"com.apple.Finder"];
        
        TerminalApplication* terminal = [SBApplication applicationWithBundleIdentifier:@"com.apple.Terminal"];
              
              
        
        FinderItem *target = [(NSArray*)[[finder selection] get] firstObject];
        if (target == nil){
            target = [[[[finder FinderWindows] firstObject] target] get];
        }
        
        if ([[target kind] isEqualToString:@"Alias"]){
            target = (FinderItem*)[(FinderAliasFile*)target originalItem];
        }
        
        NSString* fileUrl = [target URL];
        if(fileUrl != nil && ![fileUrl hasSuffix:@"/"]){
            fileUrl = [fileUrl stringByDeletingLastPathComponent];
        }
        
        NSURL* url = [NSURL URLWithString:fileUrl];
        
        [terminal activate];
        
        if (url == nil){
            [terminal open:@[[NSURL fileURLWithPath:@"/home/"]]];
        } else{
            [terminal open:@[url]];
        }
    }
}
