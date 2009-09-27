//
//  CD2ITerm.m
//  iterm
//
//  Created by James Tuley on 2/18/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "CD2ITerm.h"
#import "iTerm.h"

@implementation CD2ITerm
-(BOOL)openTermWindowForPath:(NSString*)aPath{
	@try{
		NSMutableString* fixQuotedPath = [[aPath mutableCopy]autorelease];
		
		NSString* tCommandSequence =@"clear; cd $'%@'";
		
		[fixQuotedPath replaceOccurrencesOfString:@"'" withString:@"\\'" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[fixQuotedPath length])];

		iTermITermApplication* iterm = [SBApplication applicationWithBundleIdentifier:@"net.sourceforge.iTerm"];
		[iterm activate];

		bool isDefaultWindow =NO;
		iTermTerminal* terminal=nil;
		if([[iterm windows] count] ==1 ){
			NSString* windowContents =iterm.currentTerminal.currentSession.contents;

				int originalLength = [windowContents length];
				
				NSMutableString *mutableContents = [[windowContents mutableCopy] autorelease];
				NSMutableString *mutableContents2 = [[windowContents mutableCopy] autorelease];
				[mutableContents replaceOccurrencesOfString:@"$" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[mutableContents length])];
				[mutableContents2 replaceOccurrencesOfString:@"Last login" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[mutableContents2 length])];
				
				if([mutableContents length]+1 == originalLength && [mutableContents2 length] < originalLength ){
					isDefaultWindow =YES;
					terminal = iterm.currentTerminal;
				}
			}
		
		if(!isDefaultWindow){
			terminal =[[[iterm classForScriptingClass:@"terminal"] alloc] init];
			[iterm.terminals addObject: terminal];
			[terminal launchSession:@"Default Session"] ;
		}
		[terminal.currentSession writeContentsOfFile:nil text:[NSString stringWithFormat:tCommandSequence,fixQuotedPath,nil]];

		

	}@catch(id test){
		return NO;
	}
	return YES;
}

@end
