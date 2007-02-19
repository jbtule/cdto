/*
 * ITRMReferenceGlue.h
 *
 * /Volumes/iTerm/iTerm.app
 * 2007-02-18 21:09:47 (CST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"
#import "ITRMCommandGlue.h"
#import "ITRMReferenceRendererGlue.h"

#define ITRMApp ((ITRMReference *)[ITRMReference referenceWithAppData: nil aemReference: AEMApp])
#define ITRMCon ((ITRMReference *)[ITRMReference referenceWithAppData: nil aemReference: AEMCon])
#define ITRMIts ((ITRMReference *)[ITRMReference referenceWithAppData: nil aemReference: AEMIts])


@interface ITRMReference : ASReference

/* Commands */

- (ITRMActivateCommand *)activate;
- (ITRMActivateCommand *)activate:(id)directParameter;
- (ITRMCloseCommand *)close;
- (ITRMCloseCommand *)close:(id)directParameter;
- (ITRMCountCommand *)count;
- (ITRMCountCommand *)count:(id)directParameter;
- (ITRMDeleteCommand *)delete;
- (ITRMDeleteCommand *)delete:(id)directParameter;
- (ITRMDuplicateCommand *)duplicate;
- (ITRMDuplicateCommand *)duplicate:(id)directParameter;
- (ITRMExecCommand *)exec;
- (ITRMExecCommand *)exec:(id)directParameter;
- (ITRMExistsCommand *)exists;
- (ITRMExistsCommand *)exists:(id)directParameter;
- (ITRMGetCommand *)get;
- (ITRMGetCommand *)get:(id)directParameter;
- (ITRMLaunchCommand *)launch;
- (ITRMLaunchCommand *)launch:(id)directParameter;
- (ITRMLaunch_Command *)launch_;
- (ITRMLaunch_Command *)launch_:(id)directParameter;
- (ITRMMakeCommand *)make;
- (ITRMMakeCommand *)make:(id)directParameter;
- (ITRMMoveCommand *)move;
- (ITRMMoveCommand *)move:(id)directParameter;
- (ITRMOpenCommand *)open;
- (ITRMOpenCommand *)open:(id)directParameter;
- (ITRMOpenLocationCommand *)openLocation;
- (ITRMOpenLocationCommand *)openLocation:(id)directParameter;
- (ITRMPrintCommand *)print;
- (ITRMPrintCommand *)print:(id)directParameter;
- (ITRMQuitCommand *)quit;
- (ITRMQuitCommand *)quit:(id)directParameter;
- (ITRMReopenCommand *)reopen;
- (ITRMReopenCommand *)reopen:(id)directParameter;
- (ITRMRunCommand *)run;
- (ITRMRunCommand *)run:(id)directParameter;
- (ITRMSaveCommand *)save;
- (ITRMSaveCommand *)save:(id)directParameter;
- (ITRMSelectCommand *)select;
- (ITRMSelectCommand *)select:(id)directParameter;
- (ITRMSetCommand *)set;
- (ITRMSetCommand *)set:(id)directParameter;
- (ITRMTerminateCommand *)terminate;
- (ITRMTerminateCommand *)terminate:(id)directParameter;
- (ITRMWriteCommand *)write;
- (ITRMWriteCommand *)write:(id)directParameter;

/* Elements */

- (ITRMReference *)applications;
- (ITRMReference *)attachment;
- (ITRMReference *)attributeRuns;
- (ITRMReference *)characters;
- (ITRMReference *)colors;
- (ITRMReference *)documents;
- (ITRMReference *)iTermApplications;
- (ITRMReference *)items;
- (ITRMReference *)paragraphs;
- (ITRMReference *)printSettings;
- (ITRMReference *)sessions;
- (ITRMReference *)terminals;
- (ITRMReference *)text;
- (ITRMReference *)windows;
- (ITRMReference *)words;

/* Properties */

- (ITRMReference *)antiAlias;
- (ITRMReference *)backgroundColor;
- (ITRMReference *)backgroundImagePath;
- (ITRMReference *)boldColor;
- (ITRMReference *)bounds;
- (ITRMReference *)class_;
- (ITRMReference *)closeable;
- (ITRMReference *)collating;
- (ITRMReference *)color;
- (ITRMReference *)contents;
- (ITRMReference *)copies;
- (ITRMReference *)currentSession;
- (ITRMReference *)currentTerminal;
- (ITRMReference *)cursorColor;
- (ITRMReference *)cursor_textColor;
- (ITRMReference *)document;
- (ITRMReference *)endingPage;
- (ITRMReference *)errorHandling;
- (ITRMReference *)faxNumber;
- (ITRMReference *)fileName;
- (ITRMReference *)floating;
- (ITRMReference *)font;
- (ITRMReference *)foregroundColor;
- (ITRMReference *)frontmost;
- (ITRMReference *)id_;
- (ITRMReference *)index;
- (ITRMReference *)miniaturizable;
- (ITRMReference *)miniaturized;
- (ITRMReference *)modal;
- (ITRMReference *)modified;
- (ITRMReference *)name;
- (ITRMReference *)number;
- (ITRMReference *)numberOfColumns;
- (ITRMReference *)numberOfRows;
- (ITRMReference *)pagesAcross;
- (ITRMReference *)pagesDown;
- (ITRMReference *)path;
- (ITRMReference *)properties;
- (ITRMReference *)resizable;
- (ITRMReference *)selectionColor;
- (ITRMReference *)size;
- (ITRMReference *)startingPage;
- (ITRMReference *)targetPrinter;
- (ITRMReference *)titled;
- (ITRMReference *)transparency;
- (ITRMReference *)tty;
- (ITRMReference *)version_;
- (ITRMReference *)visible;
- (ITRMReference *)zoomable;
- (ITRMReference *)zoomed;
- (ITRMReference *)first;
- (ITRMReference *)middle;
- (ITRMReference *)last;
- (ITRMReference *)any;
- (ITRMReference *)at:(long)index;
- (ITRMReference *)byIndex:(id)index;
- (ITRMReference *)byName:(NSString *)name;
- (ITRMReference *)byID:(id)id_;
- (ITRMReference *)previous:(ASConstant *)class_;
- (ITRMReference *)next:(ASConstant *)class_;
- (ITRMReference *)at:(long)fromIndex to:(long)toIndex;
- (ITRMReference *)byRange:(id)fromObject to:(id)toObject;
- (ITRMReference *)byTest:(ITRMReference *)testReference;
- (ITRMReference *)start;
- (ITRMReference *)end;
- (ITRMReference *)before;
- (ITRMReference *)after;
- (ITRMReference *)greaterThan:(id)object;
- (ITRMReference *)greaterOrEquals:(id)object;
- (ITRMReference *)equals:(id)object;
- (ITRMReference *)notEquals:(id)object;
- (ITRMReference *)lessThan:(id)object;
- (ITRMReference *)lessOrEquals:(id)object;
- (ITRMReference *)startsWith:(id)object;
- (ITRMReference *)endsWith:(id)object;
- (ITRMReference *)contains:(id)object;
- (ITRMReference *)isIn:(id)object;
- (ITRMReference *)AND:(id)remainingOperands;
- (ITRMReference *)OR:(id)remainingOperands;
- (ITRMReference *)NOT;
@end


