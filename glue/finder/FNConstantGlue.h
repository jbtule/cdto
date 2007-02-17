/*
 * FNConstantGlue.h
 *
 * /System/Library/CoreServices/Finder.app
 * 2007-02-16 20:30:45 (CST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"


@interface FNConstant : ASConstant
+ (id)constantWithCode:(OSType)code_;

/* Enumerators */

+ (FNConstant *)AdvancedPreferencesPanel;
+ (FNConstant *)ApplePhotoFormat;
+ (FNConstant *)AppleShareFormat;
+ (FNConstant *)ApplicationPanel;
+ (FNConstant *)CommentsPanel;
+ (FNConstant *)ContentIndexPanel;
+ (FNConstant *)FTPFormat;
+ (FNConstant *)GeneralInformationPanel;
+ (FNConstant *)GeneralPreferencesPanel;
+ (FNConstant *)HighSierraFormat;
+ (FNConstant *)ISO9660Format;
+ (FNConstant *)LabelPreferencesPanel;
+ (FNConstant *)LanguagesPanel;
+ (FNConstant *)MSDOSFormat;
+ (FNConstant *)MacOSExtendedFormat;
+ (FNConstant *)MacOSFormat;
+ (FNConstant *)MemoryPanel;
+ (FNConstant *)NFSFormat;
+ (FNConstant *)NTFSFormat;
+ (FNConstant *)NameAndExtensionPanel;
+ (FNConstant *)PacketWrittenUDFFormat;
+ (FNConstant *)PluginsPanel;
+ (FNConstant *)PreviewPanel;
+ (FNConstant *)ProDOSFormat;
+ (FNConstant *)QuickTakeFormat;
+ (FNConstant *)SharingPanel;
+ (FNConstant *)SidebarPreferencesPanel;
+ (FNConstant *)UDFFormat;
+ (FNConstant *)UFSFormat;
+ (FNConstant *)WebDAVFormat;
+ (FNConstant *)XsanFormat;
+ (FNConstant *)arrangedByCreationDate;
+ (FNConstant *)arrangedByKind;
+ (FNConstant *)arrangedByLabel;
+ (FNConstant *)arrangedByModificationDate;
+ (FNConstant *)arrangedByName;
+ (FNConstant *)arrangedBySize;
+ (FNConstant *)audioFormat;
+ (FNConstant *)bottom;
+ (FNConstant *)columnView;
+ (FNConstant *)comment;
+ (FNConstant *)commentColumn;
+ (FNConstant *)creationDate;
+ (FNConstant *)creationDateColumn;
+ (FNConstant *)groupView;
+ (FNConstant *)iconView;
+ (FNConstant *)kind;
+ (FNConstant *)kindColumn;
+ (FNConstant *)labelColumn;
+ (FNConstant *)labelIndex;
+ (FNConstant *)large;
+ (FNConstant *)largeIcon;
+ (FNConstant *)listView;
+ (FNConstant *)mini;
+ (FNConstant *)modificationDate;
+ (FNConstant *)modificationDateColumn;
+ (FNConstant *)name;
+ (FNConstant *)nameColumn;
+ (FNConstant *)none;
+ (FNConstant *)normal;
+ (FNConstant *)notArranged;
+ (FNConstant *)readOnly;
+ (FNConstant *)readWrite;
+ (FNConstant *)reversed;
+ (FNConstant *)right;
+ (FNConstant *)size;
+ (FNConstant *)sizeColumn;
+ (FNConstant *)small;
+ (FNConstant *)smallIcon;
+ (FNConstant *)snapToGrid;
+ (FNConstant *)unknownFormat;
+ (FNConstant *)versionColumn;
+ (FNConstant *)version_;
+ (FNConstant *)writeOnly;

/* Types and properties */

+ (FNConstant *)FinderPreferences;
+ (FNConstant *)FinderWindow;
+ (FNConstant *)URL;
+ (FNConstant *)acceptsHighLevelEvents;
+ (FNConstant *)acceptsRemoteEvents;
+ (FNConstant *)aliasFile;
+ (FNConstant *)aliasList;
+ (FNConstant *)allNameExtensionsShowing;
+ (FNConstant *)application;
+ (FNConstant *)applicationFile;
+ (FNConstant *)applicationProcess;
+ (FNConstant *)arrangement;
+ (FNConstant *)backgroundColor;
+ (FNConstant *)backgroundPicture;
+ (FNConstant *)bounds;
+ (FNConstant *)calculatesFolderSizes;
+ (FNConstant *)capacity;
+ (FNConstant *)class_;
+ (FNConstant *)clipboard;
+ (FNConstant *)clipping;
+ (FNConstant *)clippingWindow;
+ (FNConstant *)closeable;
+ (FNConstant *)collapsed;
+ (FNConstant *)color;
+ (FNConstant *)column;
+ (FNConstant *)columnViewOptions;
+ (FNConstant *)completelyExpanded;
+ (FNConstant *)computerContainer;
+ (FNConstant *)computerObject;
+ (FNConstant *)container;
+ (FNConstant *)containerWindow;
+ (FNConstant *)creatorType;
+ (FNConstant *)currentPanel;
+ (FNConstant *)currentView;
+ (FNConstant *)delayBeforeSpringing;
+ (FNConstant *)description_;
+ (FNConstant *)deskAccessoryFile;
+ (FNConstant *)deskAccessoryProcess;
+ (FNConstant *)desktop;
+ (FNConstant *)desktopObject;
+ (FNConstant *)desktopPicture;
+ (FNConstant *)desktopPosition;
+ (FNConstant *)desktopShowsConnectedServers;
+ (FNConstant *)desktopShowsHardDisks;
+ (FNConstant *)desktopShowsRemovableMedia;
+ (FNConstant *)desktopWindow;
+ (FNConstant *)disclosesPreviewPane;
+ (FNConstant *)disk;
+ (FNConstant *)displayedName;
+ (FNConstant *)documentFile;
+ (FNConstant *)ejectable;
+ (FNConstant *)entireContents;
+ (FNConstant *)everyonesPrivileges;
+ (FNConstant *)expandable;
+ (FNConstant *)expanded;
+ (FNConstant *)extensionHidden;
+ (FNConstant *)file;
+ (FNConstant *)fileType;
+ (FNConstant *)floating;
+ (FNConstant *)folder;
+ (FNConstant *)foldersOpenInNewWindows;
+ (FNConstant *)foldersSpringOpen;
+ (FNConstant *)format;
+ (FNConstant *)freeSpace;
+ (FNConstant *)frontmost;
+ (FNConstant *)group;
+ (FNConstant *)groupPrivileges;
+ (FNConstant *)hasScriptingTerminology;
+ (FNConstant *)home;
+ (FNConstant *)icon;
+ (FNConstant *)iconFamily;
+ (FNConstant *)iconSize;
+ (FNConstant *)iconViewOptions;
+ (FNConstant *)id_;
+ (FNConstant *)ignorePrivileges;
+ (FNConstant *)index;
+ (FNConstant *)informationWindow;
+ (FNConstant *)insertionLocation;
+ (FNConstant *)internetLocationFile;
+ (FNConstant *)item;
+ (FNConstant *)journalingEnabled;
+ (FNConstant *)label;
+ (FNConstant *)labelPosition;
+ (FNConstant *)large32BitIcon;
+ (FNConstant *)large4BitIcon;
+ (FNConstant *)large8BitIcon;
+ (FNConstant *)large8BitMask;
+ (FNConstant *)largeMonochromeIconAndMask;
+ (FNConstant *)listViewOptions;
+ (FNConstant *)localVolume;
+ (FNConstant *)location;
+ (FNConstant *)locked;
+ (FNConstant *)maximumWidth;
+ (FNConstant *)minimumSize;
+ (FNConstant *)minimumWidth;
+ (FNConstant *)modal;
+ (FNConstant *)nameExtension;
+ (FNConstant *)newWindowTarget;
+ (FNConstant *)newWindowsOpenInColumnView;
+ (FNConstant *)opensInClassic;
+ (FNConstant *)originalItem;
+ (FNConstant *)owner;
+ (FNConstant *)ownerPrivileges;
+ (FNConstant *)package;
+ (FNConstant *)partitionSpaceUsed;
+ (FNConstant *)physicalSize;
+ (FNConstant *)position;
+ (FNConstant *)preferences;
+ (FNConstant *)preferencesWindow;
+ (FNConstant *)preferredSize;
+ (FNConstant *)process;
+ (FNConstant *)productVersion;
+ (FNConstant *)properties;
+ (FNConstant *)resizable;
+ (FNConstant *)selection;
+ (FNConstant *)showsIcon;
+ (FNConstant *)showsIconPreview;
+ (FNConstant *)showsItemInfo;
+ (FNConstant *)showsPreviewColumn;
+ (FNConstant *)sidebarWidth;
+ (FNConstant *)small32BitIcon;
+ (FNConstant *)small4BitIcon;
+ (FNConstant *)small8BitIcon;
+ (FNConstant *)small8BitMask;
+ (FNConstant *)smallMonochromeIconAndMask;
+ (FNConstant *)sortColumn;
+ (FNConstant *)sortDirection;
+ (FNConstant *)startup;
+ (FNConstant *)startupDisk;
+ (FNConstant *)stationery;
+ (FNConstant *)statusbarVisible;
+ (FNConstant *)suggestedSize;
+ (FNConstant *)target;
+ (FNConstant *)textSize;
+ (FNConstant *)titled;
+ (FNConstant *)toolbarVisible;
+ (FNConstant *)totalPartitionSize;
+ (FNConstant *)trash;
+ (FNConstant *)trashObject;
+ (FNConstant *)usesRelativeDates;
+ (FNConstant *)visible;
+ (FNConstant *)warnsBeforeEmptying;
+ (FNConstant *)width;
+ (FNConstant *)window;
+ (FNConstant *)zoomable;
+ (FNConstant *)zoomed;
+ (FNConstant *)zoomedFullSize;
@end


