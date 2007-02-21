/*
 * PFConstantGlue.h
 *
 * /Applications/Path Finder.app
 * 2007-02-19 14:24:27 (EST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"


@interface PFConstant : ASConstant
+ (id)constantWithCode:(OSType)code_;

/* Enumerators */

+ (PFConstant *)ask;
+ (PFConstant *)detailed;
+ (PFConstant *)no;
+ (PFConstant *)standard;
+ (PFConstant *)yes;

/* Types and properties */

+ (PFConstant *)POSIXPath;
+ (PFConstant *)URL;
+ (PFConstant *)application;
+ (PFConstant *)attachment;
+ (PFConstant *)attributeRun;
+ (PFConstant *)bounds;
+ (PFConstant *)capacity;
+ (PFConstant *)character;
+ (PFConstant *)class_;
+ (PFConstant *)closeable;
+ (PFConstant *)collating;
+ (PFConstant *)color;
+ (PFConstant *)container;
+ (PFConstant *)copies;
+ (PFConstant *)creationDate;
+ (PFConstant *)creatorType;
+ (PFConstant *)currentView;
+ (PFConstant *)desktop;
+ (PFConstant *)disk;
+ (PFConstant *)displayedName;
+ (PFConstant *)document;
+ (PFConstant *)ejectable;
+ (PFConstant *)endingPage;
+ (PFConstant *)errorHandling;
+ (PFConstant *)everyonesPrivileges;
+ (PFConstant *)extensionHidden;
+ (PFConstant *)faxNumber;
+ (PFConstant *)file;
+ (PFConstant *)fileType;
+ (PFConstant *)finderWindow;
+ (PFConstant *)font;
+ (PFConstant *)freeSpace;
+ (PFConstant *)frontmost;
+ (PFConstant *)fsFile;
+ (PFConstant *)fsFolder;
+ (PFConstant *)fsItem;
+ (PFConstant *)group;
+ (PFConstant *)groupPrivileges;
+ (PFConstant *)home;
+ (PFConstant *)id_;
+ (PFConstant *)index;
+ (PFConstant *)infoWindow;
+ (PFConstant *)informationWindow;
+ (PFConstant *)item;
+ (PFConstant *)kind;
+ (PFConstant *)labelIndex;
+ (PFConstant *)localVolume;
+ (PFConstant *)locked;
+ (PFConstant *)minimizable;
+ (PFConstant *)minimized;
+ (PFConstant *)modificationDate;
+ (PFConstant *)modified;
+ (PFConstant *)name;
+ (PFConstant *)nameExtension;
+ (PFConstant *)owner;
+ (PFConstant *)ownerPrivileges;
+ (PFConstant *)pagesAcross;
+ (PFConstant *)pagesDown;
+ (PFConstant *)paragraph;
+ (PFConstant *)path;
+ (PFConstant *)physicalSize;
+ (PFConstant *)printSettings;
+ (PFConstant *)properties;
+ (PFConstant *)resizable;
+ (PFConstant *)richText;
+ (PFConstant *)selection;
+ (PFConstant *)size;
+ (PFConstant *)startingPage;
+ (PFConstant *)startup;
+ (PFConstant *)startupDisk;
+ (PFConstant *)target;
+ (PFConstant *)targetPrinter;
+ (PFConstant *)trash;
+ (PFConstant *)version_;
+ (PFConstant *)visible;
+ (PFConstant *)window;
+ (PFConstant *)word;
+ (PFConstant *)zoomable;
+ (PFConstant *)zoomed;
@end


