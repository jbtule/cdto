/*
 * PFReferenceGlue.h
 *
 * /Applications/Path Finder.app
 * 2007-02-19 14:24:27 (EST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"
#import "PFCommandGlue.h"
#import "PFReferenceRendererGlue.h"

#define PFApp ((PFReference *)[PFReference referenceWithAppData: nil aemReference: AEMApp])
#define PFCon ((PFReference *)[PFReference referenceWithAppData: nil aemReference: AEMCon])
#define PFIts ((PFReference *)[PFReference referenceWithAppData: nil aemReference: AEMIts])


@interface PFReference : ASReference

/* Commands */

- (PFPFInfoCommand *)PFInfo;
- (PFPFInfoCommand *)PFInfo:(id)directParameter;
- (PFPFOpenCommand *)PFOpen;
- (PFPFOpenCommand *)PFOpen:(id)directParameter;
- (PFActivateCommand *)activate;
- (PFActivateCommand *)activate:(id)directParameter;
- (PFAddToFavoritesCommand *)addToFavorites;
- (PFAddToFavoritesCommand *)addToFavorites:(id)directParameter;
- (PFCloseCommand *)close;
- (PFCloseCommand *)close:(id)directParameter;
- (PFCountCommand *)count;
- (PFCountCommand *)count:(id)directParameter;
- (PFDeleteCommand *)delete;
- (PFDeleteCommand *)delete:(id)directParameter;
- (PFDuplicateCommand *)duplicate;
- (PFDuplicateCommand *)duplicate:(id)directParameter;
- (PFEjectCommand *)eject;
- (PFEjectCommand *)eject:(id)directParameter;
- (PFEmptyCommand *)empty;
- (PFEmptyCommand *)empty:(id)directParameter;
- (PFExistsCommand *)exists;
- (PFExistsCommand *)exists:(id)directParameter;
- (PFGetCommand *)get;
- (PFGetCommand *)get:(id)directParameter;
- (PFGetURLCommand *)getURL;
- (PFGetURLCommand *)getURL:(id)directParameter;
- (PFLaunchCommand *)launch;
- (PFLaunchCommand *)launch:(id)directParameter;
- (PFMakeCommand *)make;
- (PFMakeCommand *)make:(id)directParameter;
- (PFMoveCommand *)move;
- (PFMoveCommand *)move:(id)directParameter;
- (PFOpenCommand *)open;
- (PFOpenCommand *)open:(id)directParameter;
- (PFOpenLocationCommand *)openLocation;
- (PFOpenLocationCommand *)openLocation:(id)directParameter;
- (PFPrintCommand *)print;
- (PFPrintCommand *)print:(id)directParameter;
- (PFQuitCommand *)quit;
- (PFQuitCommand *)quit:(id)directParameter;
- (PFReopenCommand *)reopen;
- (PFReopenCommand *)reopen:(id)directParameter;
- (PFRevealCommand *)reveal;
- (PFRevealCommand *)reveal:(id)directParameter;
- (PFRunCommand *)run;
- (PFRunCommand *)run:(id)directParameter;
- (PFSaveCommand *)save;
- (PFSaveCommand *)save:(id)directParameter;
- (PFSelectCommand *)select;
- (PFSelectCommand *)select:(id)directParameter;
- (PFSetCommand *)set;
- (PFSetCommand *)set:(id)directParameter;

/* Elements */

- (PFReference *)applications;
- (PFReference *)attachments;
- (PFReference *)attributeRuns;
- (PFReference *)characters;
- (PFReference *)containers;
- (PFReference *)disks;
- (PFReference *)documents;
- (PFReference *)finderWindows;
- (PFReference *)fsFiles;
- (PFReference *)fsFolders;
- (PFReference *)fsItems;
- (PFReference *)infoWindows;
- (PFReference *)items;
- (PFReference *)paragraphs;
- (PFReference *)printSettings;
- (PFReference *)richText;
- (PFReference *)windows;
- (PFReference *)words;

/* Properties */

- (PFReference *)POSIXPath;
- (PFReference *)URL;
- (PFReference *)bounds;
- (PFReference *)capacity;
- (PFReference *)class_;
- (PFReference *)closeable;
- (PFReference *)collating;
- (PFReference *)color;
- (PFReference *)container;
- (PFReference *)copies;
- (PFReference *)creationDate;
- (PFReference *)creatorType;
- (PFReference *)currentView;
- (PFReference *)desktop;
- (PFReference *)disk;
- (PFReference *)displayedName;
- (PFReference *)document;
- (PFReference *)ejectable;
- (PFReference *)endingPage;
- (PFReference *)errorHandling;
- (PFReference *)everyonesPrivileges;
- (PFReference *)extensionHidden;
- (PFReference *)faxNumber;
- (PFReference *)file;
- (PFReference *)fileType;
- (PFReference *)font;
- (PFReference *)freeSpace;
- (PFReference *)frontmost;
- (PFReference *)group;
- (PFReference *)groupPrivileges;
- (PFReference *)home;
- (PFReference *)id_;
- (PFReference *)index;
- (PFReference *)informationWindow;
- (PFReference *)item;
- (PFReference *)kind;
- (PFReference *)labelIndex;
- (PFReference *)localVolume;
- (PFReference *)locked;
- (PFReference *)minimizable;
- (PFReference *)minimized;
- (PFReference *)modificationDate;
- (PFReference *)modified;
- (PFReference *)name;
- (PFReference *)nameExtension;
- (PFReference *)owner;
- (PFReference *)ownerPrivileges;
- (PFReference *)pagesAcross;
- (PFReference *)pagesDown;
- (PFReference *)path;
- (PFReference *)physicalSize;
- (PFReference *)properties;
- (PFReference *)resizable;
- (PFReference *)selection;
- (PFReference *)size;
- (PFReference *)startingPage;
- (PFReference *)startup;
- (PFReference *)startupDisk;
- (PFReference *)target;
- (PFReference *)targetPrinter;
- (PFReference *)trash;
- (PFReference *)version_;
- (PFReference *)visible;
- (PFReference *)zoomable;
- (PFReference *)zoomed;
- (PFReference *)first;
- (PFReference *)middle;
- (PFReference *)last;
- (PFReference *)any;
- (PFReference *)at:(long)index;
- (PFReference *)byIndex:(id)index;
- (PFReference *)byName:(NSString *)name;
- (PFReference *)byID:(id)id_;
- (PFReference *)previous:(ASConstant *)class_;
- (PFReference *)next:(ASConstant *)class_;
- (PFReference *)at:(long)fromIndex to:(long)toIndex;
- (PFReference *)byRange:(id)fromObject to:(id)toObject;
- (PFReference *)byTest:(PFReference *)testReference;
- (PFReference *)start;
- (PFReference *)end;
- (PFReference *)before;
- (PFReference *)after;
- (PFReference *)greaterThan:(id)object;
- (PFReference *)greaterOrEquals:(id)object;
- (PFReference *)equals:(id)object;
- (PFReference *)notEquals:(id)object;
- (PFReference *)lessThan:(id)object;
- (PFReference *)lessOrEquals:(id)object;
- (PFReference *)startsWith:(id)object;
- (PFReference *)endsWith:(id)object;
- (PFReference *)contains:(id)object;
- (PFReference *)isIn:(id)object;
- (PFReference *)AND:(id)remainingOperands;
- (PFReference *)OR:(id)remainingOperands;
- (PFReference *)NOT;
@end


