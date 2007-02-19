/*
 * TMLReferenceGlue.h
 *
 * /Applications/Utilities/Terminal.app
 * 2007-02-16 20:26:03 (CST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"
#import "TMLCommandGlue.h"
#import "TMLReferenceRendererGlue.h"

#define TMLApp ((TMLReference *)[TMLReference referenceWithAppData: nil aemReference: AEMApp])
#define TMLCon ((TMLReference *)[TMLReference referenceWithAppData: nil aemReference: AEMCon])
#define TMLIts ((TMLReference *)[TMLReference referenceWithAppData: nil aemReference: AEMIts])


@interface TMLReference : ASReference

/* Commands */

- (TMLGetURLCommand *)GetURL;
- (TMLGetURLCommand *)GetURL:(id)directParameter;
- (TMLActivateCommand *)activate;
- (TMLActivateCommand *)activate:(id)directParameter;
- (TMLCloseCommand *)close;
- (TMLCloseCommand *)close:(id)directParameter;
- (TMLCountCommand *)count;
- (TMLCountCommand *)count:(id)directParameter;
- (TMLDeleteCommand *)delete;
- (TMLDeleteCommand *)delete:(id)directParameter;
- (TMLDoScriptCommand *)doScript;
- (TMLDoScriptCommand *)doScript:(id)directParameter;
- (TMLDuplicateCommand *)duplicate;
- (TMLDuplicateCommand *)duplicate:(id)directParameter;
- (TMLExistsCommand *)exists;
- (TMLExistsCommand *)exists:(id)directParameter;
- (TMLGetCommand *)get;
- (TMLGetCommand *)get:(id)directParameter;
- (TMLLaunchCommand *)launch;
- (TMLLaunchCommand *)launch:(id)directParameter;
- (TMLMakeCommand *)make;
- (TMLMakeCommand *)make:(id)directParameter;
- (TMLMoveCommand *)move;
- (TMLMoveCommand *)move:(id)directParameter;
- (TMLOpenCommand *)open;
- (TMLOpenCommand *)open:(id)directParameter;
- (TMLOpenLocationCommand *)openLocation;
- (TMLOpenLocationCommand *)openLocation:(id)directParameter;
- (TMLPrintCommand *)print;
- (TMLPrintCommand *)print:(id)directParameter;
- (TMLQuitCommand *)quit;
- (TMLQuitCommand *)quit:(id)directParameter;
- (TMLReopenCommand *)reopen;
- (TMLReopenCommand *)reopen:(id)directParameter;
- (TMLRunCommand *)run;
- (TMLRunCommand *)run:(id)directParameter;
- (TMLSaveCommand *)save;
- (TMLSaveCommand *)save:(id)directParameter;
- (TMLSetCommand *)set;
- (TMLSetCommand *)set:(id)directParameter;

/* Elements */

- (TMLReference *)applications;
- (TMLReference *)attachment;
- (TMLReference *)attributeRuns;
- (TMLReference *)characters;
- (TMLReference *)colors;
- (TMLReference *)documents;
- (TMLReference *)items;
- (TMLReference *)paragraphs;
- (TMLReference *)printSettings;
- (TMLReference *)text;
- (TMLReference *)windows;
- (TMLReference *)words;

/* Properties */

- (TMLReference *)backgroundColor;
- (TMLReference *)boldTextColor;
- (TMLReference *)bounds;
- (TMLReference *)busy;
- (TMLReference *)class_;
- (TMLReference *)closeable;
- (TMLReference *)collating;
- (TMLReference *)color;
- (TMLReference *)contents;
- (TMLReference *)copies;
- (TMLReference *)cursorColor;
- (TMLReference *)customTitle;
- (TMLReference *)document;
- (TMLReference *)endingPage;
- (TMLReference *)errorHandling;
- (TMLReference *)faxNumber;
- (TMLReference *)fileName;
- (TMLReference *)floating;
- (TMLReference *)font;
- (TMLReference *)frame;
- (TMLReference *)frontmost;
- (TMLReference *)history;
- (TMLReference *)id_;
- (TMLReference *)index;
- (TMLReference *)miniaturizable;
- (TMLReference *)miniaturized;
- (TMLReference *)modal;
- (TMLReference *)modified;
- (TMLReference *)name;
- (TMLReference *)normalTextColor;
- (TMLReference *)numberOfColumns;
- (TMLReference *)numberOfRows;
- (TMLReference *)origin;
- (TMLReference *)pagesAcross;
- (TMLReference *)pagesDown;
- (TMLReference *)path;
- (TMLReference *)position;
- (TMLReference *)processes;
- (TMLReference *)properties;
- (TMLReference *)resizable;
- (TMLReference *)size;
- (TMLReference *)startingPage;
- (TMLReference *)targetPrinter;
- (TMLReference *)titleDisplaysCustomTitle;
- (TMLReference *)titleDisplaysDeviceName;
- (TMLReference *)titleDisplaysFileName;
- (TMLReference *)titleDisplaysShellPath;
- (TMLReference *)titleDisplaysWindowSize;
- (TMLReference *)titled;
- (TMLReference *)version_;
- (TMLReference *)visible;
- (TMLReference *)zoomable;
- (TMLReference *)zoomed;
- (TMLReference *)first;
- (TMLReference *)middle;
- (TMLReference *)last;
- (TMLReference *)any;
- (TMLReference *)at:(long)index;
- (TMLReference *)byIndex:(id)index;
- (TMLReference *)byName:(NSString *)name;
- (TMLReference *)byID:(id)id_;
- (TMLReference *)previous:(ASConstant *)class_;
- (TMLReference *)next:(ASConstant *)class_;
- (TMLReference *)at:(long)fromIndex to:(long)toIndex;
- (TMLReference *)byRange:(id)fromObject to:(id)toObject;
- (TMLReference *)byTest:(TMLReference *)testReference;
- (TMLReference *)start;
- (TMLReference *)end;
- (TMLReference *)before;
- (TMLReference *)after;
- (TMLReference *)greaterThan:(id)object;
- (TMLReference *)greaterOrEquals:(id)object;
- (TMLReference *)equals:(id)object;
- (TMLReference *)notEquals:(id)object;
- (TMLReference *)lessThan:(id)object;
- (TMLReference *)lessOrEquals:(id)object;
- (TMLReference *)startsWith:(id)object;
- (TMLReference *)endsWith:(id)object;
- (TMLReference *)contains:(id)object;
- (TMLReference *)isIn:(id)object;
- (TMLReference *)AND:(id)remainingOperands;
- (TMLReference *)OR:(id)remainingOperands;
- (TMLReference *)NOT;
@end


