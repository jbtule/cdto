//
//  CD2Terminal.m
//  terminal
//
//  Created by James Tuley on 2/18/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "CD2Terminal.h"

#import "Terminal.h"

@implementation CD2Terminal

-(BOOL)openTermWindowForPath:(NSString*)aPath{
	@try{
		//fix quoting issue
		NSMutableString* fixQuotedPath = [[aPath mutableCopy]autorelease];
		[fixQuotedPath replaceOccurrencesOfString:@"'" withString:@"\\'" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[fixQuotedPath length])];
	/*	[fixQuotedPath replaceOccurrencesOfString:@"\"" withString:@"\\\"" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[fixQuotedPath length])];
		[fixQuotedPath replaceOccurrencesOfString:@" " withString:@"\\ " options:NSCaseInsensitiveSearch range:NSMakeRange(0,[fixQuotedPath length])];
		[fixQuotedPath replaceOccurrencesOfString:@"'" withString:@"\\'" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[fixQuotedPath length])];
		[fixQuotedPath replaceOccurrencesOfString:@"`" withString:@"\\`" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[fixQuotedPath length])];
		[fixQuotedPath replaceOccurrencesOfString:@")" withString:@"\\)" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[fixQuotedPath length])];
		[fixQuotedPath replaceOccurrencesOfString:@"(" withString:@"\\(" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[fixQuotedPath length])];
*/

		NSString* tCommandSequence =@"printf %%b '\\033c'; cd $'%@'";
	
		TerminalApplication* terminal = [SBApplication applicationWithBundleIdentifier:@"com.apple.Terminal"];

		[terminal activate];
		
		bool isDefaultWindow =NO;
		if([[[terminal windows] get] count] ==1 ){
			TerminalWindow* firstTermWindow =[[terminal windows] objectAtIndex:0];
			TerminalTab* firstTab =[[firstTermWindow tabs] objectAtIndex:0];

			if(!firstTab.busy){
				NSString* windowContents = firstTab.contents;
				int originalLength = [windowContents length];
				
				NSMutableString *mutableContents = [[windowContents mutableCopy] autorelease];
				NSMutableString *mutableContents2 = [[windowContents mutableCopy] autorelease];
				[mutableContents replaceOccurrencesOfString:@"$" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[mutableContents length])];
				[mutableContents2 replaceOccurrencesOfString:@"Last login" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[mutableContents2 length])];
				
				if([mutableContents length]+1 == originalLength && [mutableContents2 length] < originalLength ){
					isDefaultWindow =YES;
					[terminal doScript:[NSString stringWithFormat:tCommandSequence,fixQuotedPath,nil] in:firstTermWindow];
					
				}
			}
		}
		
		if(!isDefaultWindow){
			[terminal doScript:[NSString stringWithFormat:tCommandSequence,fixQuotedPath,nil] in:nil];
		}
		return YES;
	}@catch(id ue) {
		
		return NO;
	}@finally{
		return NO;
	}
}

@end
