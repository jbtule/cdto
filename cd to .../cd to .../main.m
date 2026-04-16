//
//  main.m
//  cd to ...
//
//  Created by James Tuley on 10/9/19.
//  Copyright © 2019 Jay Tuley. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <ScriptingBridge/ScriptingBridge.h>
#import <ApplicationServices/ApplicationServices.h>

#import "Finder.h"
#import "Terminal.h"

NSUInteger linesOfHistory(TerminalTab* tab) {
   NSString* hist = [[tab history] stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    return [[hist componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]] count];
}

// Check if Ghostty is currently running
BOOL isGhosttyRunning(void) {
    NSArray* runningApps = [[NSWorkspace sharedWorkspace] runningApplications];
    for (NSRunningApplication* app in runningApps) {
        if ([app.bundleIdentifier isEqualToString:@"com.mitchellh.ghostty"]) {
            return YES;
        }
    }
    return NO;
}

void openInGhostty(NSURL* url) {
    NSLog(@"[cdto] Trying Ghostty...");
    NSURL* appURL = [[NSWorkspace sharedWorkspace]
        URLForApplicationWithBundleIdentifier:@"com.mitchellh.ghostty"];
    if (appURL == nil) {
        NSLog(@"[cdto] Ghostty app not found!");
        return;
    }
    NSLog(@"[cdto] Found Ghostty at: %@", appURL);

    NSString* workingDir = [url path];
    NSLog(@"[cdto] Opening with working directory: %@", workingDir);
    NSLog(@"[cdto] Ghostty running: %@", isGhosttyRunning() ? @"YES" : @"NO");

    NSTask* task = [[NSTask alloc] init];
    task.executableURL = [NSURL fileURLWithPath:@"/usr/bin/osascript"];
    task.arguments = @[
        @"-e", @"on run argv",
        @"-e", @"set workingDir to item 1 of argv",
        @"-e", @"tell application \"Ghostty\"",
        @"-e", @"set cfg to new surface configuration",
        @"-e", @"set initial working directory of cfg to workingDir",
        @"-e", @"if it is running then",
        @"-e", @"if (count of windows) > 0 then",
        @"-e", @"new tab in front window with configuration cfg",
        @"-e", @"else",
        @"-e", @"new window with configuration cfg",
        @"-e", @"end if",
        @"-e", @"else",
        @"-e", @"new window with configuration cfg",
        @"-e", @"end if",
        @"-e", @"activate",
        @"-e", @"end tell",
        @"-e", @"end run",
        @"--", workingDir
    ];
    [task launch];
    [task waitUntilExit];

    if (task.terminationStatus == 0) {
        NSLog(@"[cdto] Ghostty opened successfully");
    } else {
        NSLog(@"[cdto] Ghostty AppleScript failed with exit code: %d", task.terminationStatus);
    }
}

void openInTerminal(NSURL* url) {
    NSLog(@"[cdto] Trying Terminal...");
    TerminalApplication* terminal = [SBApplication applicationWithBundleIdentifier:@"com.apple.Terminal"];

    TerminalWindow* win = nil;
    if ([[terminal windows] count] == 1){
        win = [[terminal windows] objectAtLocation:@1];
        win = [[terminal windows] objectWithID: [NSNumber numberWithInteger:win.id]];
    }
    [terminal open:@[url]];
    TerminalWindow* newWin = [[terminal windows] objectAtLocation:@1];
    newWin = [[terminal windows] objectWithID: [NSNumber numberWithInteger:newWin.id]];
    TerminalTab* newTab = [[newWin tabs] objectAtLocation:@1];

    NSString* setName = [[NSUserDefaults standardUserDefaults] stringForKey:@"cdto-new-window-setting"];
    if(setName != nil && ![setName isEqualToString:@""]) {
        TerminalSettingsSet* chosenSet = nil;
        for (TerminalSettingsSet *set in [terminal settingsSets]) {
            if([[set name] isEqualToString:setName]){
                chosenSet = set;
            }
        }
        if(chosenSet != nil){
            newTab.currentSettings = chosenSet;
        }
    }

    if([[NSUserDefaults standardUserDefaults] boolForKey:@"cdto-close-default-window"]){
        if([[win tabs] count] == 1){
            TerminalTab* tab = [[win tabs]objectAtLocation:@1];
            if(![tab busy]){
                NSUInteger oldTabLines = linesOfHistory(tab);
                while([newTab busy]){
                    [NSThread sleepForTimeInterval:0.1f];
                }
                NSUInteger newTabLines = linesOfHistory(newTab);
                if(oldTabLines == newTabLines){
                    [win closeSaving:TerminalSaveOptionsNo savingIn:nil];
                }
            }
        }
    }

    [terminal activate];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* terminalApp = [[NSUserDefaults standardUserDefaults] stringForKey:@"cdto-terminal-app"];
        NSLog(@"[cdto] cdto-terminal-app value: '%@'", terminalApp);

        FinderApplication* finder = [SBApplication applicationWithBundleIdentifier:@"com.apple.Finder"];

        FinderItem *target = [(NSArray*)[[finder selection] get] firstObject];
        FinderFinderWindow* findWin = [[finder FinderWindows] objectAtLocation:@1];
        findWin = [[finder FinderWindows] objectWithID:[NSNumber numberWithInteger: findWin.id]];
        bool selected = true;
        if (target == nil){
            target = [[findWin target] get];
            selected = false;
        }

        NSDictionary* itemProperties = [target properties];
        id originalItem = [itemProperties objectForKey:@"originalItem"];
        if (originalItem != nil && originalItem != [NSNull null]){
            target = originalItem;
        }

        NSString* fileUrl = [target URL];
        NSLog(@"[cdto] fileUrl: %@", fileUrl);
        if(fileUrl != nil && ![fileUrl hasSuffix:@"/"] && selected){
            fileUrl = [fileUrl stringByDeletingLastPathComponent];
        }

        NSURL* url = [NSURL URLWithString:fileUrl];
        NSLog(@"[cdto] url: %@", url);
        if (url != nil){
            if ([terminalApp isEqualToString:@"ghostty"]) {
                openInGhostty(url);
            } else {
                openInTerminal(url);
            }
        } else {
            NSLog(@"[cdto] url is nil, doing nothing");
        }
    }
}
