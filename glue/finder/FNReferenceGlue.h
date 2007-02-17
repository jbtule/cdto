/*
 * FNReferenceGlue.h
 *
 * /System/Library/CoreServices/Finder.app
 * 2007-02-16 20:30:45 (CST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"
#import "FNCommandGlue.h"
#import "FNReferenceRendererGlue.h"

#define FNApp ((FNReference *)[FNReference referenceWithAppData: nil aemReference: AEMApp])
#define FNCon ((FNReference *)[FNReference referenceWithAppData: nil aemReference: AEMCon])
#define FNIts ((FNReference *)[FNReference referenceWithAppData: nil aemReference: AEMIts])


@interface FNReference : ASReference

/* Commands */

- (FN_0x28NOTAVAILABLE0x29AddToFavorites_Command *)_0x28NOTAVAILABLE0x29AddToFavorites_;
- (FN_0x28NOTAVAILABLE0x29AddToFavorites_Command *)_0x28NOTAVAILABLE0x29AddToFavorites_:(id)directParameter;
- (FNActivateCommand *)activate;
- (FNActivateCommand *)activate:(id)directParameter;
- (FNCleanUpCommand *)cleanUp;
- (FNCleanUpCommand *)cleanUp:(id)directParameter;
- (FNCloseCommand *)close;
- (FNCloseCommand *)close:(id)directParameter;
- (FNCopy_Command *)copy_;
- (FNCopy_Command *)copy_:(id)directParameter;
- (FNCountCommand *)count;
- (FNCountCommand *)count:(id)directParameter;
- (FNDataSizeCommand *)dataSize;
- (FNDataSizeCommand *)dataSize:(id)directParameter;
- (FNDeleteCommand *)delete;
- (FNDeleteCommand *)delete:(id)directParameter;
- (FNDuplicateCommand *)duplicate;
- (FNDuplicateCommand *)duplicate:(id)directParameter;
- (FNEjectCommand *)eject;
- (FNEjectCommand *)eject:(id)directParameter;
- (FNEmptyCommand *)empty;
- (FNEmptyCommand *)empty:(id)directParameter;
- (FNEraseCommand *)erase;
- (FNEraseCommand *)erase:(id)directParameter;
- (FNExistsCommand *)exists;
- (FNExistsCommand *)exists:(id)directParameter;
- (FNFindCommand *)find;
- (FNFindCommand *)find:(id)directParameter;
- (FNGetCommand *)get;
- (FNGetCommand *)get:(id)directParameter;
- (FNLaunchCommand *)launch;
- (FNLaunchCommand *)launch:(id)directParameter;
- (FNMakeCommand *)make;
- (FNMakeCommand *)make:(id)directParameter;
- (FNMoveCommand *)move;
- (FNMoveCommand *)move:(id)directParameter;
- (FNOpenCommand *)open;
- (FNOpenCommand *)open:(id)directParameter;
- (FNOpenLocationCommand *)openLocation;
- (FNOpenLocationCommand *)openLocation:(id)directParameter;
- (FNPrintCommand *)print;
- (FNPrintCommand *)print:(id)directParameter;
- (FNQuitCommand *)quit;
- (FNQuitCommand *)quit:(id)directParameter;
- (FNReopenCommand *)reopen;
- (FNReopenCommand *)reopen:(id)directParameter;
- (FNRestartCommand *)restart;
- (FNRestartCommand *)restart:(id)directParameter;
- (FNRevealCommand *)reveal;
- (FNRevealCommand *)reveal:(id)directParameter;
- (FNRunCommand *)run;
- (FNRunCommand *)run:(id)directParameter;
- (FNSelectCommand *)select;
- (FNSelectCommand *)select:(id)directParameter;
- (FNSetCommand *)set;
- (FNSetCommand *)set:(id)directParameter;
- (FNShutDownCommand *)shutDown;
- (FNShutDownCommand *)shutDown:(id)directParameter;
- (FNSleepCommand *)sleep;
- (FNSleepCommand *)sleep:(id)directParameter;
- (FNSortCommand *)sort;
- (FNSortCommand *)sort:(id)directParameter;
- (FNUpdateCommand *)update;
- (FNUpdateCommand *)update:(id)directParameter;

/* Elements */

- (FNReference *)FinderWindows;
- (FNReference *)aliasFiles;
- (FNReference *)aliasList;
- (FNReference *)application;
- (FNReference *)applicationFiles;
- (FNReference *)applicationProcesses;
- (FNReference *)clippingWindows;
- (FNReference *)clippings;
- (FNReference *)columns;
- (FNReference *)computerObject;
- (FNReference *)containers;
- (FNReference *)deskAccessoryProcesses;
- (FNReference *)desktopObject;
- (FNReference *)desktopWindow;
- (FNReference *)disks;
- (FNReference *)documentFiles;
- (FNReference *)files;
- (FNReference *)folders;
- (FNReference *)iconFamily;
- (FNReference *)internetLocationFiles;
- (FNReference *)items;
- (FNReference *)label;
- (FNReference *)packages;
- (FNReference *)preferences;
- (FNReference *)preferencesWindow;
- (FNReference *)processes;
- (FNReference *)trashObject;
- (FNReference *)windows;

/* Properties */

- (FNReference *)FinderPreferences;
- (FNReference *)URL;
- (FNReference *)acceptsHighLevelEvents;
- (FNReference *)acceptsRemoteEvents;
- (FNReference *)allNameExtensionsShowing;
- (FNReference *)applicationFile;
- (FNReference *)arrangement;
- (FNReference *)backgroundColor;
- (FNReference *)backgroundPicture;
- (FNReference *)bounds;
- (FNReference *)calculatesFolderSizes;
- (FNReference *)capacity;
- (FNReference *)class_;
- (FNReference *)clipboard;
- (FNReference *)clippingWindow;
- (FNReference *)closeable;
- (FNReference *)collapsed;
- (FNReference *)color;
- (FNReference *)columnViewOptions;
- (FNReference *)comment;
- (FNReference *)completelyExpanded;
- (FNReference *)computerContainer;
- (FNReference *)container;
- (FNReference *)containerWindow;
- (FNReference *)creationDate;
- (FNReference *)creatorType;
- (FNReference *)currentPanel;
- (FNReference *)currentView;
- (FNReference *)delayBeforeSpringing;
- (FNReference *)description_;
- (FNReference *)deskAccessoryFile;
- (FNReference *)desktop;
- (FNReference *)desktopPicture;
- (FNReference *)desktopPosition;
- (FNReference *)desktopShowsConnectedServers;
- (FNReference *)desktopShowsHardDisks;
- (FNReference *)desktopShowsRemovableMedia;
- (FNReference *)disclosesPreviewPane;
- (FNReference *)disk;
- (FNReference *)displayedName;
- (FNReference *)ejectable;
- (FNReference *)entireContents;
- (FNReference *)everyonesPrivileges;
- (FNReference *)expandable;
- (FNReference *)expanded;
- (FNReference *)extensionHidden;
- (FNReference *)file;
- (FNReference *)fileType;
- (FNReference *)floating;
- (FNReference *)foldersOpenInNewWindows;
- (FNReference *)foldersSpringOpen;
- (FNReference *)format;
- (FNReference *)freeSpace;
- (FNReference *)frontmost;
- (FNReference *)group;
- (FNReference *)groupPrivileges;
- (FNReference *)hasScriptingTerminology;
- (FNReference *)home;
- (FNReference *)icon;
- (FNReference *)iconSize;
- (FNReference *)iconViewOptions;
- (FNReference *)id_;
- (FNReference *)ignorePrivileges;
- (FNReference *)index;
- (FNReference *)informationWindow;
- (FNReference *)insertionLocation;
- (FNReference *)item;
- (FNReference *)journalingEnabled;
- (FNReference *)kind;
- (FNReference *)labelIndex;
- (FNReference *)labelPosition;
- (FNReference *)large32BitIcon;
- (FNReference *)large4BitIcon;
- (FNReference *)large8BitIcon;
- (FNReference *)large8BitMask;
- (FNReference *)largeMonochromeIconAndMask;
- (FNReference *)listViewOptions;
- (FNReference *)localVolume;
- (FNReference *)location;
- (FNReference *)locked;
- (FNReference *)maximumWidth;
- (FNReference *)minimumSize;
- (FNReference *)minimumWidth;
- (FNReference *)modal;
- (FNReference *)modificationDate;
- (FNReference *)name;
- (FNReference *)nameExtension;
- (FNReference *)newWindowTarget;
- (FNReference *)newWindowsOpenInColumnView;
- (FNReference *)opensInClassic;
- (FNReference *)originalItem;
- (FNReference *)owner;
- (FNReference *)ownerPrivileges;
- (FNReference *)partitionSpaceUsed;
- (FNReference *)physicalSize;
- (FNReference *)position;
- (FNReference *)preferredSize;
- (FNReference *)productVersion;
- (FNReference *)properties;
- (FNReference *)resizable;
- (FNReference *)selection;
- (FNReference *)showsIcon;
- (FNReference *)showsIconPreview;
- (FNReference *)showsItemInfo;
- (FNReference *)showsPreviewColumn;
- (FNReference *)sidebarWidth;
- (FNReference *)size;
- (FNReference *)small32BitIcon;
- (FNReference *)small4BitIcon;
- (FNReference *)small8BitIcon;
- (FNReference *)small8BitMask;
- (FNReference *)smallMonochromeIconAndMask;
- (FNReference *)sortColumn;
- (FNReference *)sortDirection;
- (FNReference *)startup;
- (FNReference *)startupDisk;
- (FNReference *)stationery;
- (FNReference *)statusbarVisible;
- (FNReference *)suggestedSize;
- (FNReference *)target;
- (FNReference *)textSize;
- (FNReference *)titled;
- (FNReference *)toolbarVisible;
- (FNReference *)totalPartitionSize;
- (FNReference *)trash;
- (FNReference *)usesRelativeDates;
- (FNReference *)version_;
- (FNReference *)visible;
- (FNReference *)warnsBeforeEmptying;
- (FNReference *)width;
- (FNReference *)window;
- (FNReference *)zoomable;
- (FNReference *)zoomed;
- (FNReference *)zoomedFullSize;
- (FNReference *)first;
- (FNReference *)middle;
- (FNReference *)last;
- (FNReference *)any;
- (FNReference *)at:(long)index;
- (FNReference *)byIndex:(id)index;
- (FNReference *)byName:(NSString *)name;
- (FNReference *)byID:(id)id_;
- (FNReference *)previous:(ASConstant *)class_;
- (FNReference *)next:(ASConstant *)class_;
- (FNReference *)at:(long)fromIndex to:(long)toIndex;
- (FNReference *)byRange:(id)fromObject to:(id)toObject;
- (FNReference *)byTest:(FNReference *)testReference;
- (FNReference *)start;
- (FNReference *)end;
- (FNReference *)before;
- (FNReference *)after;
- (FNReference *)greaterThan:(id)object;
- (FNReference *)greaterOrEquals:(id)object;
- (FNReference *)equals:(id)object;
- (FNReference *)notEquals:(id)object;
- (FNReference *)lessThan:(id)object;
- (FNReference *)lessOrEquals:(id)object;
- (FNReference *)startsWith:(id)object;
- (FNReference *)endsWith:(id)object;
- (FNReference *)contains:(id)object;
- (FNReference *)isIn:(id)object;
- (FNReference *)AND:(id)remainingOperands;
- (FNReference *)OR:(id)remainingOperands;
- (FNReference *)NOT;
@end


