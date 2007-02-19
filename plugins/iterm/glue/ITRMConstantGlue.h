/*
 * ITRMConstantGlue.h
 *
 * /Volumes/iTerm/iTerm.app
 * 2007-02-18 21:09:47 (CST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"


@interface ITRMConstant : ASConstant
+ (id)constantWithCode:(OSType)code_;

/* Enumerators */

+ (ITRMConstant *)ask;
+ (ITRMConstant *)detailed;
+ (ITRMConstant *)no;
+ (ITRMConstant *)standard;
+ (ITRMConstant *)yes;

/* Types and properties */

+ (ITRMConstant *)antiAlias;
+ (ITRMConstant *)application;
+ (ITRMConstant *)attachment;
+ (ITRMConstant *)attributeRun;
+ (ITRMConstant *)backgroundColor;
+ (ITRMConstant *)backgroundImagePath;
+ (ITRMConstant *)boldColor;
+ (ITRMConstant *)bounds;
+ (ITRMConstant *)character;
+ (ITRMConstant *)class_;
+ (ITRMConstant *)closeable;
+ (ITRMConstant *)collating;
+ (ITRMConstant *)color;
+ (ITRMConstant *)contents;
+ (ITRMConstant *)copies;
+ (ITRMConstant *)currentSession;
+ (ITRMConstant *)currentTerminal;
+ (ITRMConstant *)cursorColor;
+ (ITRMConstant *)cursor_textColor;
+ (ITRMConstant *)document;
+ (ITRMConstant *)endingPage;
+ (ITRMConstant *)errorHandling;
+ (ITRMConstant *)faxNumber;
+ (ITRMConstant *)fileName;
+ (ITRMConstant *)floating;
+ (ITRMConstant *)font;
+ (ITRMConstant *)foregroundColor;
+ (ITRMConstant *)frontmost;
+ (ITRMConstant *)iTermApplication;
+ (ITRMConstant *)id_;
+ (ITRMConstant *)index;
+ (ITRMConstant *)item;
+ (ITRMConstant *)miniaturizable;
+ (ITRMConstant *)miniaturized;
+ (ITRMConstant *)modal;
+ (ITRMConstant *)modified;
+ (ITRMConstant *)name;
+ (ITRMConstant *)number;
+ (ITRMConstant *)numberOfColumns;
+ (ITRMConstant *)numberOfRows;
+ (ITRMConstant *)pagesAcross;
+ (ITRMConstant *)pagesDown;
+ (ITRMConstant *)paragraph;
+ (ITRMConstant *)path;
+ (ITRMConstant *)printSettings;
+ (ITRMConstant *)properties;
+ (ITRMConstant *)resizable;
+ (ITRMConstant *)selectionColor;
+ (ITRMConstant *)session;
+ (ITRMConstant *)size;
+ (ITRMConstant *)startingPage;
+ (ITRMConstant *)targetPrinter;
+ (ITRMConstant *)terminal;
+ (ITRMConstant *)text;
+ (ITRMConstant *)titled;
+ (ITRMConstant *)transparency;
+ (ITRMConstant *)tty;
+ (ITRMConstant *)version_;
+ (ITRMConstant *)visible;
+ (ITRMConstant *)window;
+ (ITRMConstant *)word;
+ (ITRMConstant *)zoomable;
+ (ITRMConstant *)zoomed;
@end


