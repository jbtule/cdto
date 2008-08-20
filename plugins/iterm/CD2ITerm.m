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
		NSMutableString* fixQuotedPath = [[aPath mutableCopy]autorelease];
		
		NSString* tCommandSequence =@"clear; cd $'%@'";
		
		[fixQuotedPath replaceOccurrencesOfString:@"'" withString:@"\\'" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[fixQuotedPath length])];

		ITRMApplication* iterm = [[ITRMApplication alloc] initWithName:@"iterm.app"];
		[[iterm activate]send];

		bool isDefaultWindow =NO;
		ITRMReference* terminal=nil;
		if([[[[iterm windows] count]send]intValue] ==1 ){
			NSString* windowContents =[[[[[iterm currentTerminal]currentSession] text]get]send];

				int originalLength = [windowContents length];
				
				NSMutableString *mutableContents = [[windowContents mutableCopy] autorelease];
				NSMutableString *mutableContents2 = [[windowContents mutableCopy] autorelease];
				[mutableContents replaceOccurrencesOfString:@"$" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[mutableContents length])];
				[mutableContents2 replaceOccurrencesOfString:@"Last login" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[mutableContents2 length])];
				
				if([mutableContents length]+1 == originalLength && [mutableContents2 length] < originalLength ){
					isDefaultWindow =YES;
					terminal = [[[iterm currentTerminal]get]send];
				}
			}
		
		if(!isDefaultWindow){
			terminal =[[[iterm make]new_:[ITRMConstant terminal]] send];
			[[[terminal launch_] session:@"Default Session"] send];
		}
		[[[[terminal currentSession] write] text:[NSString stringWithFormat:tCommandSequence,fixQuotedPath,nil]]send];

		

	}@catch(id test){
		return NO;
	}
	return YES;
}

@end
