#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSMutableDictionary *myDict;
    id result;

    // Check arguments; print usage if we don't have a filename and
    // the key to print
    if( argc != 5 ) {
      [[NSFileHandle fileHandleWithStandardError]
        writeData:
          [[NSString stringWithFormat: @"usage: %s in.plist out.plist key value\n",
                     argv[0]
            ] dataUsingEncoding: NSASCIIStringEncoding]];

      [pool release];
      exit( 1 );
    }

    // Ask NSDictionary to try and read plist file
    myDict = [NSMutableDictionary dictionaryWithContentsOfFile:
                             [NSString stringWithCString: argv[1]]];

    // If it couldn't be read, gripe and bail
    if( myDict == nil ) {
      [[NSFileHandle fileHandleWithStandardError]
        writeData:
          [[NSString stringWithFormat:
                       @"Couldn't create dictionary from \"%s\"\n",
                     argv[1]
            ] dataUsingEncoding: NSASCIIStringEncoding]];

      [pool release];
      return -1;
      exit( 1 );
    }

    // try and set the requested key
    [myDict setObject: [NSString stringWithCString:argv[4]] forKey: [NSString stringWithCString: argv[3]]];

    // Write requested value to file
    if(![myDict writeToFile:[NSString stringWithCString:argv[2]]
    atomically:YES]){
      [[NSFileHandle fileHandleWithStandardError]
        writeData:
          [[NSString stringWithFormat:
                       @"Couldn't write file to %s\n", argv[2]
            ] dataUsingEncoding: NSASCIIStringEncoding]];
	return -1;
    }

    [pool release];
    return 0;
}
