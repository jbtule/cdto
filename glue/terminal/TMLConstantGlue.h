/*
 * TMLConstantGlue.h
 *
 * /Applications/Utilities/Terminal.app
 * 2007-02-16 20:26:02 (CST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"


@interface TMLConstant : ASConstant
+ (id)constantWithCode:(OSType)code_;

/* Enumerators */

+ (TMLConstant *)ask;
+ (TMLConstant *)detailed;
+ (TMLConstant *)no;
+ (TMLConstant *)standard;
+ (TMLConstant *)yes;

/* Types and properties */

+ (TMLConstant *)application;
+ (TMLConstant *)attachment;
+ (TMLConstant *)attributeRun;
+ (TMLConstant *)backgroundColor;
+ (TMLConstant *)boldTextColor;
+ (TMLConstant *)bounds;
+ (TMLConstant *)busy;
+ (TMLConstant *)character;
+ (TMLConstant *)class_;
+ (TMLConstant *)closeable;
+ (TMLConstant *)collating;
+ (TMLConstant *)color;
+ (TMLConstant *)contents;
+ (TMLConstant *)copies;
+ (TMLConstant *)cursorColor;
+ (TMLConstant *)customTitle;
+ (TMLConstant *)document;
+ (TMLConstant *)endingPage;
+ (TMLConstant *)errorHandling;
+ (TMLConstant *)faxNumber;
+ (TMLConstant *)fileName;
+ (TMLConstant *)floating;
+ (TMLConstant *)font;
+ (TMLConstant *)frame;
+ (TMLConstant *)frontmost;
+ (TMLConstant *)history;
+ (TMLConstant *)id_;
+ (TMLConstant *)index;
+ (TMLConstant *)item;
+ (TMLConstant *)miniaturizable;
+ (TMLConstant *)miniaturized;
+ (TMLConstant *)modal;
+ (TMLConstant *)modified;
+ (TMLConstant *)name;
+ (TMLConstant *)normalTextColor;
+ (TMLConstant *)numberOfColumns;
+ (TMLConstant *)numberOfRows;
+ (TMLConstant *)origin;
+ (TMLConstant *)pagesAcross;
+ (TMLConstant *)pagesDown;
+ (TMLConstant *)paragraph;
+ (TMLConstant *)path;
+ (TMLConstant *)position;
+ (TMLConstant *)printSettings;
+ (TMLConstant *)processes;
+ (TMLConstant *)properties;
+ (TMLConstant *)resizable;
+ (TMLConstant *)size;
+ (TMLConstant *)startingPage;
+ (TMLConstant *)targetPrinter;
+ (TMLConstant *)text;
+ (TMLConstant *)titleDisplaysCustomTitle;
+ (TMLConstant *)titleDisplaysDeviceName;
+ (TMLConstant *)titleDisplaysFileName;
+ (TMLConstant *)titleDisplaysShellPath;
+ (TMLConstant *)titleDisplaysWindowSize;
+ (TMLConstant *)titled;
+ (TMLConstant *)version_;
+ (TMLConstant *)visible;
+ (TMLConstant *)window;
+ (TMLConstant *)word;
+ (TMLConstant *)zoomable;
+ (TMLConstant *)zoomed;
@end


