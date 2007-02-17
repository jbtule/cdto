//
//  main.m
//  cd to ...
//
//  Created by James Tuley on 2/16/07.
//  Copyright Jay Tuley 2007. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "FNGlue.h"
#import "TMLGlue.h"
int main(int argc, char *argv[])
{
	id pool = [[NSAutoreleasePool alloc] init];
	
	
	TMLApplication* terminal = [[TMLApplication alloc] initWithName:@"Terminal.app"];
	FNApplication* finder = [[FNApplication alloc] initWithName:@"Finder.app"];
	
	FNReference* frontWindow =[[finder windows] first];
	
	NSString* target =[[[[frontWindow target] URL] get] send];
	NSURL* url =[NSURL URLWithString:target];
	
	FSRef fsRef;
	Boolean isDir =NO;
	Boolean wasAliased;
	if (CFURLGetFSRef((CFURLRef)url, &fsRef)){
		if (FSResolveAliasFile (&fsRef, true /*resolveAliasChains*/,
				    &isDir, &wasAliased) == noErr && wasAliased){
						NSURL* newURL = (NSURL*)CFURLCreateFromFSRef(NULL, &fsRef);
						[newURL autorelease];
						if(newURL!=nil)
							url = newURL;
					}
	}
	
	target = [url path];
	
	if(!isDir)
		target =[target stringByDeletingLastPathComponent];
			
	[[terminal activate] send];
	[[terminal doScript:[NSString stringWithFormat:@"clear; cd '%@'",target,nil]]send];
	[pool release];
    return 0;
}
