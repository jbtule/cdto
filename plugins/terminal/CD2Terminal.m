//
//  CD2Terminal.m
//  terminal
//
//  Created by James Tuley on 2/18/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "CD2Terminal.h"

#import "TMLGlue.h"

@implementation CD2Terminal

-(BOOL)openTermWindowForPath:(NSString*)aPath{
	@try{
		//fix quoting issue
		NSMutableString* fixQuotedPath = [[aPath mutableCopy]autorelease];
		[fixQuotedPath replaceOccurrencesOfString:@"\"" withString:@"\\\"" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[fixQuotedPath length])];
	

	
		TMLApplication* terminal = [[TMLApplication alloc] initWithName:@"Terminal.app"];

		[[terminal activate] send];
		
		bool isDefaultWindow =NO;
		if([[[[terminal windows] count]send]intValue] ==1 ){
			TMLReference* firstTermWindow =[[terminal windows]first];
			if(![[[[firstTermWindow busy] get]send] boolValue]){
				NSString* windowContents = [[[firstTermWindow contents]get]send];
				int originalLength = [windowContents length];
				
				NSMutableString *mutableContents = [[windowContents mutableCopy] autorelease];
				NSMutableString *mutableContents2 = [[windowContents mutableCopy] autorelease];
				[mutableContents replaceOccurrencesOfString:@"$" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[mutableContents length])];
				[mutableContents2 replaceOccurrencesOfString:@"Last login" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0,[mutableContents2 length])];
				
				if([mutableContents length]+1 == originalLength && [mutableContents2 length] < originalLength ){
					isDefaultWindow =YES;
					[[[terminal doScript:[NSString stringWithFormat:@"clear; cd \"%@\"",fixQuotedPath,nil]] in:firstTermWindow]send];
					
				}
			}
		}
		
		if(!isDefaultWindow){
			[[terminal doScript:[NSString stringWithFormat:@"clear; cd \"%@\"",fixQuotedPath,nil]]send];
		}
		return YES;
	}@catch(id ue) {
		
		return NO;
	}@finally{
		return NO;
	}
}

@end
