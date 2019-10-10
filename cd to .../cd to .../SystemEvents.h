/*
 * SystemEvents.h
 */

#import <AppKit/AppKit.h>
#import <ScriptingBridge/ScriptingBridge.h>


@class SystemEventsApplication, SystemEventsDocument, SystemEventsWindow, SystemEventsUser, SystemEventsAppearancePreferencesObject, SystemEventsCDAndDVDPreferencesObject, SystemEventsInsertionPreference, SystemEventsDesktop, SystemEventsDockPreferencesObject, SystemEventsLoginItem, SystemEventsConfiguration, SystemEventsInterface, SystemEventsLocation, SystemEventsNetworkPreferencesObject, SystemEventsService, SystemEventsScreenSaver, SystemEventsScreenSaverPreferencesObject, SystemEventsSecurityPreferencesObject, SystemEventsDiskItem, SystemEventsAlias, SystemEventsDisk, SystemEventsDomain, SystemEventsClassicDomainObject, SystemEventsFile, SystemEventsFilePackage, SystemEventsFolder, SystemEventsLocalDomainObject, SystemEventsNetworkDomainObject, SystemEventsSystemDomainObject, SystemEventsUserDomainObject, SystemEventsFolderAction, SystemEventsScript, SystemEventsAction, SystemEventsAttribute, SystemEventsUIElement, SystemEventsBrowser, SystemEventsBusyIndicator, SystemEventsButton, SystemEventsCheckbox, SystemEventsColorWell, SystemEventsColumn, SystemEventsComboBox, SystemEventsDrawer, SystemEventsGroup, SystemEventsGrowArea, SystemEventsImage, SystemEventsIncrementor, SystemEventsList, SystemEventsMenu, SystemEventsMenuBar, SystemEventsMenuBarItem, SystemEventsMenuButton, SystemEventsMenuItem, SystemEventsOutline, SystemEventsPopOver, SystemEventsPopUpButton, SystemEventsProcess, SystemEventsApplicationProcess, SystemEventsDeskAccessoryProcess, SystemEventsProgressIndicator, SystemEventsRadioButton, SystemEventsRadioGroup, SystemEventsRelevanceIndicator, SystemEventsRow, SystemEventsScrollArea, SystemEventsScrollBar, SystemEventsSheet, SystemEventsSlider, SystemEventsSplitter, SystemEventsSplitterGroup, SystemEventsStaticText, SystemEventsTabGroup, SystemEventsTable, SystemEventsTextArea, SystemEventsTextField, SystemEventsToolbar, SystemEventsValueIndicator, SystemEventsPropertyListFile, SystemEventsData, SystemEventsPropertyListItem, SystemEventsAnnotation, SystemEventsQuickTimeData, SystemEventsAudioData, SystemEventsMovieData, SystemEventsQuickTimeFile, SystemEventsAudioFile, SystemEventsMovieFile, SystemEventsTrack, SystemEventsXMLAttribute, SystemEventsXMLData, SystemEventsXMLElement, SystemEventsXMLFile, SystemEventsPrintSettings, SystemEventsScriptingClass, SystemEventsScriptingCommand, SystemEventsScriptingDefinitionObject, SystemEventsScriptingElement, SystemEventsScriptingEnumeration, SystemEventsScriptingEnumerator, SystemEventsScriptingParameter, SystemEventsScriptingProperty, SystemEventsScriptingResultObject, SystemEventsScriptingSuite;

enum SystemEventsSaveOptions {
	SystemEventsSaveOptionsYes = 'yes ' /* Save the file. */,
	SystemEventsSaveOptionsNo = 'no  ' /* Do not save the file. */,
	SystemEventsSaveOptionsAsk = 'ask ' /* Ask the user whether or not to save the file. */
};
typedef enum SystemEventsSaveOptions SystemEventsSaveOptions;

enum SystemEventsPrintingErrorHandling {
	SystemEventsPrintingErrorHandlingStandard = 'lwst' /* Standard PostScript error handling */,
	SystemEventsPrintingErrorHandlingDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum SystemEventsPrintingErrorHandling SystemEventsPrintingErrorHandling;

enum SystemEventsSaveableFileFormat {
	SystemEventsSaveableFileFormatText = 'ctxt' /* Text File Format */
};
typedef enum SystemEventsSaveableFileFormat SystemEventsSaveableFileFormat;

enum SystemEventsScrollPageBehaviors {
	SystemEventsScrollPageBehaviorsJumpToHere = 'tohr' /* jump to here */,
	SystemEventsScrollPageBehaviorsJumpToNextPage = 'nxpg' /* jump to next page */
};
typedef enum SystemEventsScrollPageBehaviors SystemEventsScrollPageBehaviors;

enum SystemEventsFontSmoothingStyles {
	SystemEventsFontSmoothingStylesAutomatic = 'autm' /* automatic */,
	SystemEventsFontSmoothingStylesLight = 'lite' /* light */,
	SystemEventsFontSmoothingStylesMedium = 'medi' /* medium */,
	SystemEventsFontSmoothingStylesStandard = 'stnd' /* standard */,
	SystemEventsFontSmoothingStylesStrong = 'strg' /* strong */
};
typedef enum SystemEventsFontSmoothingStyles SystemEventsFontSmoothingStyles;

enum SystemEventsAppearances {
	SystemEventsAppearancesBlue = 'blue' /* blue */,
	SystemEventsAppearancesGraphite = 'grft' /* graphite */
};
typedef enum SystemEventsAppearances SystemEventsAppearances;

enum SystemEventsHighlightColors {
	SystemEventsHighlightColorsBlue = 'blue' /* blue */,
	SystemEventsHighlightColorsGold = 'gold' /* gold */,
	SystemEventsHighlightColorsGraphite = 'grft' /* graphite */,
	SystemEventsHighlightColorsGreen = 'gren' /* green */,
	SystemEventsHighlightColorsOrange = 'orng' /* orange */,
	SystemEventsHighlightColorsPurple = 'prpl' /* purple */,
	SystemEventsHighlightColorsRed = 'red ' /* red */,
	SystemEventsHighlightColorsSilver = 'slvr' /* silver */
};
typedef enum SystemEventsHighlightColors SystemEventsHighlightColors;

enum SystemEventsDhac {
	SystemEventsDhacAskWhatToDo = 'dhas' /* ask what to do */,
	SystemEventsDhacIgnore = 'dhig' /* ignore */,
	SystemEventsDhacOpenApplication = 'dhap' /* open application */,
	SystemEventsDhacRunAScript = 'dhrs' /* run a script */
};
typedef enum SystemEventsDhac SystemEventsDhac;

enum SystemEventsDpls {
	SystemEventsDplsBottom = 'bott' /* bottom */,
	SystemEventsDplsLeft = 'left' /* left */,
	SystemEventsDplsRight = 'righ' /* right */
};
typedef enum SystemEventsDpls SystemEventsDpls;

enum SystemEventsDpef {
	SystemEventsDpefGenie = 'geni' /* genie */,
	SystemEventsDpefScale = 'scal' /* scale */
};
typedef enum SystemEventsDpef SystemEventsDpef;

enum SystemEventsEdfm {
	SystemEventsEdfmApplePhotoFormat = 'dfph' /* Apple Photo format */,
	SystemEventsEdfmAppleShareFormat = 'dfas' /* AppleShare format */,
	SystemEventsEdfmAudioFormat = 'dfau' /* audio format */,
	SystemEventsEdfmHighSierraFormat = 'dfhs' /* High Sierra format */,
	SystemEventsEdfmISO9660Format = 'df96' /* ISO 9660 format */,
	SystemEventsEdfmMacOSExtendedFormat = 'dfh+' /* Mac OS Extended format */,
	SystemEventsEdfmMacOSFormat = 'dfhf' /* Mac OS format */,
	SystemEventsEdfmMSDOSFormat = 'dfms' /* MSDOS format */,
	SystemEventsEdfmNFSFormat = 'dfnf' /* NFS format */,
	SystemEventsEdfmProDOSFormat = 'dfpr' /* ProDOS format */,
	SystemEventsEdfmQuickTakeFormat = 'dfqt' /* QuickTake format */,
	SystemEventsEdfmUDFFormat = 'dfud' /* UDF format */,
	SystemEventsEdfmUFSFormat = 'dfuf' /* UFS format */,
	SystemEventsEdfmUnknownFormat = 'df$$' /* unknown format */,
	SystemEventsEdfmWebDAVFormat = 'dfwd' /* WebDAV format */
};
typedef enum SystemEventsEdfm SystemEventsEdfm;

enum SystemEventsEMds {
	SystemEventsEMdsCommandDown = 'Kcmd' /* command down */,
	SystemEventsEMdsControlDown = 'Kctl' /* control down */,
	SystemEventsEMdsOptionDown = 'Kopt' /* option down */,
	SystemEventsEMdsShiftDown = 'Ksft' /* shift down */
};
typedef enum SystemEventsEMds SystemEventsEMds;

enum SystemEventsEMky {
	SystemEventsEMkyCommand = 'eCmd' /* command */,
	SystemEventsEMkyControl = 'eCnt' /* control */,
	SystemEventsEMkyOption = 'eOpt' /* option */,
	SystemEventsEMkyShift = 'eSft' /* shift */
};
typedef enum SystemEventsEMky SystemEventsEMky;

enum SystemEventsPrmd {
	SystemEventsPrmdNormal = 'norm' /* normal */,
	SystemEventsPrmdSlideShow = 'pmss' /* slide show */
};
typedef enum SystemEventsPrmd SystemEventsPrmd;

enum SystemEventsMvsz {
	SystemEventsMvszCurrent = 'cust' /* current */,
	SystemEventsMvszDouble = 'doub' /* double */,
	SystemEventsMvszHalf = 'half' /* half */,
	SystemEventsMvszNormal = 'norm' /* normal */,
	SystemEventsMvszScreen = 'fits' /* screen */
};
typedef enum SystemEventsMvsz SystemEventsMvsz;

enum SystemEventsEnum {
	SystemEventsEnumStandard = 'lwst' /* Standard PostScript error handling */,
	SystemEventsEnumDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum SystemEventsEnum SystemEventsEnum;

enum SystemEventsAccs {
	SystemEventsAccsNone = 'none' /* none */,
	SystemEventsAccsReadOnly = 'read' /* read only */,
	SystemEventsAccsReadWrite = 'rdwr' /* read write */,
	SystemEventsAccsWriteOnly = 'writ' /* write only */
};
typedef enum SystemEventsAccs SystemEventsAccs;

@protocol SystemEventsGenericMethods

- (void) closeSaving:(SystemEventsSaveOptions)saving savingIn:(SystemEventsFile *)savingIn;  // Close a document.
- (void) saveIn:(SystemEventsFile *)in_ as:(SystemEventsSaveableFileFormat)as;  // Save a document.
- (void) printWithProperties:(SystemEventsPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy an object.
- (void) moveTo:(SBObject *)to;  // Move an object to a new location.

@end



/*
 * Standard Suite
 */

// The application's top-level scripting object.
@interface SystemEventsApplication : SBApplication

- (SBElementArray<SystemEventsDocument *> *) documents;
- (SBElementArray<SystemEventsWindow *> *) windows;

@property (copy, readonly) NSString *name;  // The name of the application.
@property (readonly) BOOL frontmost;  // Is this the active application?
@property (copy, readonly) NSString *version;  // The version number of the application.

- (id) open:(id)x;  // Open a document.
- (void) print:(id)x withProperties:(SystemEventsPrintSettings *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) quitSaving:(SystemEventsSaveOptions)saving;  // Quit the application.
- (BOOL) exists:(id)x;  // Verify that an object exists.
- (void) abortTransaction;  // Discard the results of a bounded update session with one or more files.
- (NSInteger) beginTransaction;  // Begin a bounded update session with one or more files.
- (void) endTransaction;  // Apply the results of a bounded update session with one or more files.
- (id) move:(id)x to:(id)to;  // Move disk item(s) to a new location.

- (void) logOut;  // Log out the current user
- (void) restartStateSavingPreference:(BOOL)stateSavingPreference;  // Restart the computer
- (void) shutDownStateSavingPreference:(BOOL)stateSavingPreference;  // Shut Down the computer
- (void) sleep;  // Put the computer to sleep
- (id) clickAt:(NSArray<NSNumber *> *)at;  // cause the target process to behave as if the UI element were clicked
- (void) keyCode:(id)x using:(id)using_;  // cause the target process to behave as if key codes were entered
- (void) keystroke:(NSString *)x using:(id)using_;  // cause the target process to behave as if keystrokes were entered

@end

// A document.
@interface SystemEventsDocument : SBObject <SystemEventsGenericMethods>

@property (copy, readonly) NSString *name;  // Its name.
@property (readonly) BOOL modified;  // Has it been modified since the last save?
@property (copy, readonly) SystemEventsFile *file;  // Its location on disk, if it has one.


@end

// A window.
@interface SystemEventsWindow : SBObject <SystemEventsGenericMethods>

@property (copy, readonly) NSString *name;  // The title of the window.
- (NSInteger) id;  // The unique identifier of the window.
@property NSInteger index;  // The index of the window, ordered front to back.
@property NSRect bounds;  // The bounding rectangle of the window.
@property (readonly) BOOL closeable;  // Does the window have a close button?
@property (readonly) BOOL miniaturizable;  // Does the window have a minimize button?
@property BOOL miniaturized;  // Is the window minimized right now?
@property (readonly) BOOL resizable;  // Can the window be resized?
@property BOOL visible;  // Is the window visible right now?
@property (readonly) BOOL zoomable;  // Does the window have a zoom button?
@property BOOL zoomed;  // Is the window zoomed right now?
@property (copy, readonly) SystemEventsDocument *document;  // The document whose contents are displayed in the window.


@end



/*
 * System Events Suite
 */

// The System Events application
@interface SystemEventsApplication (SystemEventsSuite)

@property NSInteger quitDelay;  // the time in seconds the application will idle before quitting; if set to zero, idle time will not cause the application to quit
@property (readonly) BOOL scriptMenuEnabled;  // Is the Script menu installed in the menu bar?

@end



/*
 * Accounts Suite
 */

// The System Events application
@interface SystemEventsApplication (AccountsSuite)

- (SBElementArray<SystemEventsUser *> *) users;

@property (copy, readonly) SystemEventsUser *currentUser;  // the currently logged in user

@end

// user account
@interface SystemEventsUser : SBObject <SystemEventsGenericMethods>

@property (copy, readonly) NSString *fullName;  // user's full name
@property (copy, readonly) id homeDirectory;  // path to user's home directory
@property (copy, readonly) NSString *name;  // user's short name
@property (copy) id picturePath;  // path to user's picture. Can be set for current user only!


@end



/*
 * Appearance Suite
 */

// The System Events application
@interface SystemEventsApplication (AppearanceSuite)

@property (copy) SystemEventsAppearancePreferencesObject *appearancePreferences;  // a collection of appearance preferences

@end

// A collection of appearance preferences
@interface SystemEventsAppearancePreferencesObject : SBObject <SystemEventsGenericMethods>

@property SystemEventsAppearances appearance;  // the overall look of buttons, menus and windows
@property BOOL fontSmoothing;  // Is font smoothing on?
@property SystemEventsFontSmoothingStyles fontSmoothingStyle;  // the method used for smoothing fonts
@property (copy) id highlightColor;  // color used for hightlighting selected text and lists
@property NSInteger recentApplicationsLimit;  // the number of recent applications to track
@property NSInteger recentDocumentsLimit;  // the number of recent documents to track
@property NSInteger recentServersLimit;  // the number of recent servers to track
@property SystemEventsScrollPageBehaviors scrollBarAction;  // the action performed by clicking the scroll bar
@property BOOL smoothScrolling;  // Is smooth scrolling used?
@property BOOL darkMode;  // use dark menu bar and dock


@end



/*
 * CD and DVD Preferences Suite
 */

// The System Events application
@interface SystemEventsApplication (CDAndDVDPreferencesSuite)

@property (copy) SystemEventsCDAndDVDPreferencesObject *CDAndDVDPreferences;  // the preferences for the current user when a CD or DVD is inserted

@end

// user's CD and DVD insertion preferences
@interface SystemEventsCDAndDVDPreferencesObject : SBObject <SystemEventsGenericMethods>

@property (copy, readonly) SystemEventsInsertionPreference *blankCD;  // the blank CD insertion preference
@property (copy, readonly) SystemEventsInsertionPreference *blankDVD;  // the blank DVD insertion preference
@property (copy, readonly) SystemEventsInsertionPreference *blankBD;  // the blank BD insertion preference
@property (copy, readonly) SystemEventsInsertionPreference *musicCD;  // the music CD insertion preference
@property (copy, readonly) SystemEventsInsertionPreference *pictureCD;  // the picture CD insertion preference
@property (copy, readonly) SystemEventsInsertionPreference *videoDVD;  // the video DVD insertion preference
@property (copy, readonly) SystemEventsInsertionPreference *videoBD;  // the video BD insertion preference


@end

// a specific insertion preference
@interface SystemEventsInsertionPreference : SBObject <SystemEventsGenericMethods>

@property (copy) id customApplication;  // application to launch or activate on the insertion of media
@property (copy) id customScript;  // AppleScript to launch or activate on the insertion of media
@property SystemEventsDhac insertionAction;  // action to perform on media insertion


@end



/*
 * Desktop Suite
 */

// The System Events application
@interface SystemEventsApplication (DesktopSuite)

- (SBElementArray<SystemEventsDesktop *> *) desktops;

@property (copy, readonly) SystemEventsDesktop *currentDesktop;  // the primary desktop

@end

// desktop picture settings
@interface SystemEventsDesktop : SBObject <SystemEventsGenericMethods>

@property (copy, readonly) NSString *name;  // name of the desktop
- (NSInteger) id;  // unique identifier of the desktop
@property double changeInterval;  // number of seconds to wait between changing the desktop picture
@property (copy, readonly) NSString *displayName;  // name of display on which this desktop appears
@property (copy) id picture;  // path to file used as desktop picture
@property NSInteger pictureRotation;  // never, using interval, using login, after sleep
@property (copy) id picturesFolder;  // path to folder containing pictures for changing desktop background
@property BOOL randomOrder;  // turn on for random ordering of changing desktop pictures
@property BOOL translucentMenuBar;  // indicates whether the menu bar is translucent


@end



/*
 * Dock Preferences Suite
 */

// The System Events application
@interface SystemEventsApplication (DockPreferencesSuite)

@property (copy) SystemEventsDockPreferencesObject *dockPreferences;  // the preferences for the current user's dock

@end

// user's dock preferences
@interface SystemEventsDockPreferencesObject : SBObject <SystemEventsGenericMethods>

@property BOOL animate;  // is the animation of opening applications on or off?
@property BOOL autohide;  // is autohiding the dock on or off?
@property double dockSize;  // size/height of the items (between 0.0 (minimum) and 1.0 (maximum))
@property BOOL magnification;  // is magnification on or off?
@property double magnificationSize;  // maximum magnification size when magnification is on (between 0.0 (minimum) and 1.0 (maximum))
@property SystemEventsDpef minimizeEffect;  // minimization effect
@property SystemEventsDpls screenEdge;  // location on screen


@end



/*
 * Login Items Suite
 */

// The System Events application
@interface SystemEventsApplication (LoginItemsSuite)

- (SBElementArray<SystemEventsLoginItem *> *) loginItems;

@end

// an item to be launched or opened at login
@interface SystemEventsLoginItem : SBObject <SystemEventsGenericMethods>

@property BOOL hidden;  // Is the Login Item hidden when launched?
@property (copy, readonly) NSString *kind;  // the file type of the Login Item
@property (copy, readonly) NSString *name;  // the name of the Login Item
@property (copy, readonly) NSString *path;  // the file system path to the Login Item


@end



/*
 * Network Preferences Suite
 */

// The System Events application
@interface SystemEventsApplication (NetworkPreferencesSuite)

@property (copy) SystemEventsNetworkPreferencesObject *networkPreferences;  // the preferences for the current user's network

@end

// A collection of settings for configuring a connection
@interface SystemEventsConfiguration : SBObject <SystemEventsGenericMethods>

@property (copy) NSString *accountName;  // the name used to authenticate
@property (readonly) BOOL connected;  // Is the configuration connected?
- (NSString *) id;  // the unique identifier for the configuration
@property (copy, readonly) NSString *name;  // the name of the configuration

- (SystemEventsConfiguration *) connect;  // connect a configuration or service
- (SystemEventsConfiguration *) disconnect;  // disconnect a configuration or service

@end

// A collection of settings for a network interface
@interface SystemEventsInterface : SBObject <SystemEventsGenericMethods>

@property BOOL automatic;  // configure the interface speed, duplex, and mtu automatically?
@property (copy) NSString *duplex;  // the duplex setting  half | full | full with flow control
- (NSString *) id;  // the unique identifier for the interface
@property (copy, readonly) NSString *kind;  // the type of interface
@property (copy, readonly) NSString *MACAddress;  // the MAC address for the interface
@property NSInteger mtu;  // the packet size
@property (copy, readonly) NSString *name;  // the name of the interface
@property NSInteger speed;  // ethernet speed 10 | 100 | 1000


@end

// A set of services
@interface SystemEventsLocation : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsService *> *) services;

- (NSString *) id;  // the unique identifier for the location
@property (copy) NSString *name;  // the name of the location


@end

// the preferences for the current user's network
@interface SystemEventsNetworkPreferencesObject : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsInterface *> *) interfaces;
- (SBElementArray<SystemEventsLocation *> *) locations;
- (SBElementArray<SystemEventsService *> *) services;

@property (copy) SystemEventsLocation *currentLocation;  // the current location


@end

// A collection of settings for a network service
@interface SystemEventsService : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsConfiguration *> *) configurations;

@property (readonly) BOOL active;  // Is the service active?
@property (copy) SystemEventsConfiguration *currentConfiguration;  // the currently selected configuration
- (NSString *) id;  // the unique identifier for the service
@property (copy, readonly) SystemEventsInterface *interface;  // the interface the service is built on
@property (readonly) NSInteger kind;  // the type of service
@property (copy) NSString *name;  // the name of the service

- (SystemEventsConfiguration *) connect;  // connect a configuration or service
- (SystemEventsConfiguration *) disconnect;  // disconnect a configuration or service

@end



/*
 * Screen Saver Suite
 */

// The System Events application
@interface SystemEventsApplication (ScreenSaverSuite)

- (SBElementArray<SystemEventsScreenSaver *> *) screenSavers;

@property (copy) SystemEventsScreenSaver *currentScreenSaver;  // the currently selected screen saver
@property (copy) SystemEventsScreenSaverPreferencesObject *screenSaverPreferences;  // the preferences common to all screen savers

@end

// an installed screen saver
@interface SystemEventsScreenSaver : SBObject <SystemEventsGenericMethods>

@property (copy, readonly) NSString *displayedName;  // name of the screen saver module as displayed to the user
@property (copy, readonly) NSString *name;  // name of the screen saver module to be displayed
@property (copy, readonly) SystemEventsAlias *path;  // path to the screen saver module
@property (copy) NSString *pictureDisplayStyle;  // effect to use when displaying picture-based screen savers (slideshow, collage, or mosaic)

- (void) start;  // start the screen saver
- (void) stop;  // stop the screen saver

@end

// screen saver settings
@interface SystemEventsScreenSaverPreferencesObject : SBObject <SystemEventsGenericMethods>

@property NSInteger delayInterval;  // number of seconds of idle time before the screen saver starts; zero for never
@property BOOL mainScreenOnly;  // should the screen saver be shown only on the main screen?
@property (readonly) BOOL running;  // is the screen saver running?
@property BOOL showClock;  // should a clock appear over the screen saver?

- (void) start;  // start the screen saver
- (void) stop;  // stop the screen saver

@end



/*
 * Audio File Suite
 */

// The System Events application
@interface SystemEventsApplication (AudioFileSuite)

- (SBElementArray<SystemEventsAudioData *> *) audioDatas;
- (SBElementArray<SystemEventsAudioFile *> *) audioFiles;

@end



/*
 * Security Suite
 */

// The System Events application
@interface SystemEventsApplication (SecuritySuite)

@property (copy) SystemEventsSecurityPreferencesObject *securityPreferences;  // a collection of security preferences

@end

// a collection of security preferences
@interface SystemEventsSecurityPreferencesObject : SBObject <SystemEventsGenericMethods>

@property BOOL automaticLogin;  // Is automatic login allowed?
@property BOOL logOutWhenInactive;  // Will the computer log out when inactive?
@property NSInteger logOutWhenInactiveInterval;  // The interval of inactivity after which the computer will log out
@property BOOL requirePasswordToUnlock;  // Is a password required to unlock secure preferences?
@property BOOL requirePasswordToWake;  // Is a password required to wake the computer from sleep or screen saver?
@property BOOL secureVirtualMemory;  // Is secure virtual memory being used?


@end



/*
 * Disk-Folder-File Suite
 */

// The Disk-Folder-File specific extensions to the application
@interface SystemEventsApplication (DiskFolderFileSuite)

- (SBElementArray<SystemEventsAlias *> *) aliases;
- (SBElementArray<SystemEventsDisk *> *) disks;
- (SBElementArray<SystemEventsDiskItem *> *) diskItems;
- (SBElementArray<SystemEventsDomain *> *) domains;
- (SBElementArray<SystemEventsFile *> *) files;
- (SBElementArray<SystemEventsFilePackage *> *) filePackages;
- (SBElementArray<SystemEventsFolder *> *) folders;

@property (copy, readonly) SystemEventsFolder *applicationSupportFolder;  // The Application Support folder
@property (copy, readonly) SystemEventsFolder *applicationsFolder;  // The user's Applications folder
@property (copy, readonly) SystemEventsClassicDomainObject *ClassicDomain;  // the collection of folders belonging to the Classic System
@property (copy, readonly) SystemEventsFolder *desktopFolder;  // The user's Desktop folder
@property (copy, readonly) SystemEventsFolder *desktopPicturesFolder;  // The Desktop Pictures folder
@property (copy, readonly) SystemEventsFolder *documentsFolder;  // The user's Documents folder
@property (copy, readonly) SystemEventsFolder *downloadsFolder;  // The user's Downloads folder
@property (copy, readonly) SystemEventsFolder *favoritesFolder;  // The user's Favorites folder
@property (copy, readonly) SystemEventsFolder *FolderActionScriptsFolder;  // The user's Folder Action Scripts folder
@property (copy, readonly) SystemEventsFolder *fontsFolder;  // The Fonts folder
@property (copy, readonly) SystemEventsFolder *homeFolder;  // The Home folder of the currently logged in user
@property (copy, readonly) SystemEventsFolder *libraryFolder;  // The Library folder
@property (copy, readonly) SystemEventsLocalDomainObject *localDomain;  // the collection of folders residing on the Local machine
@property (copy, readonly) SystemEventsFolder *moviesFolder;  // The user's Movies folder
@property (copy, readonly) SystemEventsFolder *musicFolder;  // The user's Music folder
@property (copy, readonly) SystemEventsNetworkDomainObject *networkDomain;  // the collection of folders residing on the Network
@property (copy, readonly) SystemEventsFolder *picturesFolder;  // The user's Pictures folder
@property (copy, readonly) SystemEventsFolder *preferencesFolder;  // The user's Preferences folder
@property (copy, readonly) SystemEventsFolder *publicFolder;  // The user's Public folder
@property (copy, readonly) SystemEventsFolder *scriptingAdditionsFolder;  // The Scripting Additions folder
@property (copy, readonly) SystemEventsFolder *scriptsFolder;  // The user's Scripts folder
@property (copy, readonly) SystemEventsFolder *sharedDocumentsFolder;  // The Shared Documents folder
@property (copy, readonly) SystemEventsFolder *sitesFolder;  // The user's Sites folder
@property (copy, readonly) SystemEventsFolder *speakableItemsFolder;  // The Speakable Items folder
@property (copy, readonly) SystemEventsDisk *startupDisk;  // the disk from which Mac OS X was loaded
@property (copy, readonly) SystemEventsSystemDomainObject *systemDomain;  // the collection of folders belonging to the System
@property (copy, readonly) SystemEventsFolder *temporaryItemsFolder;  // The Temporary Items folder
@property (copy, readonly) SystemEventsFolder *trash;  // The user's Trash folder
@property (copy, readonly) SystemEventsUserDomainObject *userDomain;  // the collection of folders belonging to the User
@property (copy, readonly) SystemEventsFolder *utilitiesFolder;  // The Utilities folder
@property (copy, readonly) SystemEventsFolder *workflowsFolder;  // The Automator Workflows folder

@end

// An item stored in the file system
@interface SystemEventsDiskItem : SBObject <SystemEventsGenericMethods>

@property (readonly) BOOL busyStatus;  // Is the disk item busy?
@property (copy, readonly) SystemEventsDiskItem *container;  // the folder or disk which has this disk item as an element
@property (copy, readonly) NSDate *creationDate;  // the date on which the disk item was created
@property (copy, readonly) NSString *displayedName;  // the name of the disk item as displayed in the User Interface
- (NSString *) id;  // the unique ID of the disk item
@property (copy) NSDate *modificationDate;  // the date on which the disk item was last modified
@property (copy) NSString *name;  // the name of the disk item
@property (copy, readonly) NSString *nameExtension;  // the extension portion of the name
@property (readonly) BOOL packageFolder;  // Is the disk item a package?
@property (copy, readonly) NSString *path;  // the file system path of the disk item
@property (readonly) NSInteger physicalSize;  // the actual space used by the disk item on disk
@property (copy, readonly) NSString *POSIXPath;  // the POSIX file system path of the disk item
@property (readonly) NSInteger size;  // the logical size of the disk item
@property (copy, readonly) NSString *URL;  // the URL of the disk item
@property BOOL visible;  // Is the disk item visible?
@property (copy, readonly) NSString *volume;  // the volume on which the disk item resides

- (void) delete;  // Delete disk item(s).
- (id) moveTo:(id)to;  // Move disk item(s) to a new location.

@end

// An alias in the file system
@interface SystemEventsAlias : SystemEventsDiskItem

- (SBElementArray<SystemEventsAlias *> *) aliases;
- (SBElementArray<SystemEventsDiskItem *> *) diskItems;
- (SBElementArray<SystemEventsFile *> *) files;
- (SBElementArray<SystemEventsFilePackage *> *) filePackages;
- (SBElementArray<SystemEventsFolder *> *) folders;

@property (copy) id creatorType;  // the OSType identifying the application that created the alias
@property (copy) id defaultApplication;  // the application that will launch if the alias is opened
@property (copy) id fileType;  // the OSType identifying the type of data contained in the alias
@property (copy, readonly) NSString *kind;  // The kind of alias, as shown in Finder
@property (copy, readonly) NSString *productVersion;  // the version of the product (visible at the top of the "Get Info" window)
@property (copy, readonly) NSString *shortVersion;  // the short version of the application bundle referenced by the alias
@property BOOL stationery;  // Is the alias a stationery pad?
@property (copy, readonly) NSString *typeIdentifier;  // The type identifier of the alias
@property (copy, readonly) NSString *version;  // the version of the application bundle referenced by the alias (visible at the bottom of the "Get Info" window)


@end

// A disk in the file system
@interface SystemEventsDisk : SystemEventsDiskItem

- (SBElementArray<SystemEventsAlias *> *) aliases;
- (SBElementArray<SystemEventsDiskItem *> *) diskItems;
- (SBElementArray<SystemEventsFile *> *) files;
- (SBElementArray<SystemEventsFilePackage *> *) filePackages;
- (SBElementArray<SystemEventsFolder *> *) folders;

@property (copy, readonly) NSNumber *capacity;  // the total number of bytes (free or used) on the disk
@property (readonly) BOOL ejectable;  // Can the media be ejected (floppies, CD's, and so on)?
@property (readonly) SystemEventsEdfm format;  // the file system format of this disk
@property (copy, readonly) NSNumber *freeSpace;  // the number of free bytes left on the disk
@property BOOL ignorePrivileges;  // Ignore permissions on this disk?
@property (readonly) BOOL localVolume;  // Is the media a local volume (as opposed to a file server)?
@property (copy, readonly) id server;  // the server on which the disk resides, AFP volumes only
@property (readonly) BOOL startup;  // Is this disk the boot disk?
@property (copy, readonly) id zone;  // the zone in which the disk's server resides, AFP volumes only


@end

// A domain in the file system
@interface SystemEventsDomain : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsFolder *> *) folders;

@property (copy, readonly) SystemEventsFolder *applicationSupportFolder;  // The Application Support folder
@property (copy, readonly) SystemEventsFolder *applicationsFolder;  // The Applications folder
@property (copy, readonly) SystemEventsFolder *desktopPicturesFolder;  // The Desktop Pictures folder
@property (copy, readonly) SystemEventsFolder *FolderActionScriptsFolder;  // The Folder Action Scripts folder
@property (copy, readonly) SystemEventsFolder *fontsFolder;  // The Fonts folder
- (NSString *) id;  // the unique identifier of the domain
@property (copy, readonly) SystemEventsFolder *libraryFolder;  // The Library folder
@property (copy, readonly) NSString *name;  // the name of the domain
@property (copy, readonly) SystemEventsFolder *preferencesFolder;  // The Preferences folder
@property (copy, readonly) SystemEventsFolder *scriptingAdditionsFolder;  // The Scripting Additions folder
@property (copy, readonly) SystemEventsFolder *scriptsFolder;  // The Scripts folder
@property (copy, readonly) SystemEventsFolder *sharedDocumentsFolder;  // The Shared Documents folder
@property (copy, readonly) SystemEventsFolder *speakableItemsFolder;  // The Speakable Items folder
@property (copy, readonly) SystemEventsFolder *utilitiesFolder;  // The Utilities folder
@property (copy, readonly) SystemEventsFolder *workflowsFolder;  // The Automator Workflows folder


@end

// The Classic domain in the file system
@interface SystemEventsClassicDomainObject : SystemEventsDomain

- (SBElementArray<SystemEventsFolder *> *) folders;

@property (copy, readonly) SystemEventsFolder *appleMenuFolder;  // The Apple Menu Items folder
@property (copy, readonly) SystemEventsFolder *controlPanelsFolder;  // The Control Panels folder
@property (copy, readonly) SystemEventsFolder *controlStripModulesFolder;  // The Control Strip Modules folder
@property (copy, readonly) SystemEventsFolder *desktopFolder;  // The Classic Desktop folder
@property (copy, readonly) SystemEventsFolder *extensionsFolder;  // The Extensions folder
@property (copy, readonly) SystemEventsFolder *fontsFolder;  // The Fonts folder
@property (copy, readonly) SystemEventsFolder *launcherItemsFolder;  // The Launcher Items folder
@property (copy, readonly) SystemEventsFolder *preferencesFolder;  // The Classic Preferences folder
@property (copy, readonly) SystemEventsFolder *shutdownFolder;  // The Shutdown Items folder
@property (copy, readonly) SystemEventsFolder *startupItemsFolder;  // The StartupItems folder
@property (copy, readonly) SystemEventsFolder *systemFolder;  // The System folder


@end

// A file in the file system
@interface SystemEventsFile : SystemEventsDiskItem

@property (copy) id creatorType;  // the OSType identifying the application that created the file
@property (copy) id defaultApplication;  // the application that will launch if the file is opened
@property (copy) id fileType;  // the OSType identifying the type of data contained in the file
@property (copy, readonly) NSString *kind;  // The kind of file, as shown in Finder
@property (copy, readonly) NSString *productVersion;  // the version of the product (visible at the top of the "Get Info" window)
@property (copy, readonly) NSString *shortVersion;  // the short version of the file
@property BOOL stationery;  // Is the file a stationery pad?
@property (copy, readonly) NSString *typeIdentifier;  // The type identifier of the file
@property (copy, readonly) NSString *version;  // the version of the file (visible at the bottom of the "Get Info" window)

- (id) open;  // Open a document.


@end

// A file package in the file system
@interface SystemEventsFilePackage : SystemEventsFile

- (SBElementArray<SystemEventsAlias *> *) aliases;
- (SBElementArray<SystemEventsDiskItem *> *) diskItems;
- (SBElementArray<SystemEventsFile *> *) files;
- (SBElementArray<SystemEventsFilePackage *> *) filePackages;
- (SBElementArray<SystemEventsFolder *> *) folders;


@end

// A folder in the file system
@interface SystemEventsFolder : SystemEventsDiskItem

- (SBElementArray<SystemEventsAlias *> *) aliases;
- (SBElementArray<SystemEventsDiskItem *> *) diskItems;
- (SBElementArray<SystemEventsFile *> *) files;
- (SBElementArray<SystemEventsFilePackage *> *) filePackages;
- (SBElementArray<SystemEventsFolder *> *) folders;


@end

// The local domain in the file system
@interface SystemEventsLocalDomainObject : SystemEventsDomain

- (SBElementArray<SystemEventsFolder *> *) folders;


@end

// The network domain in the file system
@interface SystemEventsNetworkDomainObject : SystemEventsDomain

- (SBElementArray<SystemEventsFolder *> *) folders;


@end

// The system domain in the file system
@interface SystemEventsSystemDomainObject : SystemEventsDomain

- (SBElementArray<SystemEventsFolder *> *) folders;


@end

// The user domain in the file system
@interface SystemEventsUserDomainObject : SystemEventsDomain

- (SBElementArray<SystemEventsFolder *> *) folders;

@property (copy, readonly) SystemEventsFolder *desktopFolder;  // The user's Desktop folder
@property (copy, readonly) SystemEventsFolder *documentsFolder;  // The user's Documents folder
@property (copy, readonly) SystemEventsFolder *downloadsFolder;  // The user's Downloads folder
@property (copy, readonly) SystemEventsFolder *favoritesFolder;  // The user's Favorites folder
@property (copy, readonly) SystemEventsFolder *homeFolder;  // The user's Home folder
@property (copy, readonly) SystemEventsFolder *moviesFolder;  // The user's Movies folder
@property (copy, readonly) SystemEventsFolder *musicFolder;  // The user's Music folder
@property (copy, readonly) SystemEventsFolder *picturesFolder;  // The user's Pictures folder
@property (copy, readonly) SystemEventsFolder *publicFolder;  // The user's Public folder
@property (copy, readonly) SystemEventsFolder *sitesFolder;  // The user's Sites folder
@property (copy, readonly) SystemEventsFolder *temporaryItemsFolder;  // The Temporary Items folder


@end



/*
 * Folder Actions Suite
 */

@interface SystemEventsApplication (FolderActionsSuite)

- (SBElementArray<SystemEventsFolderAction *> *) folderActions;

@property BOOL folderActionsEnabled;  // Are Folder Actions currently being processed?

@end

// An action attached to a folder in the file system
@interface SystemEventsFolderAction : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsScript *> *) scripts;

@property BOOL enabled;  // Is the folder action enabled?
@property (copy) NSString *name;  // the name of the folder action, which is also the name of the folder
@property (copy, readonly) NSString *path;  // the path to the folder to which the folder action applies
@property (copy, readonly) NSString *volume;  // the volume on which the folder to which the folder action applies resides

- (void) enableProcessNewChanges:(SystemEventsSaveOptions)processNewChanges;  // Enable a folder action.

@end

// A script invoked by a folder action
@interface SystemEventsScript : SBObject <SystemEventsGenericMethods>

@property BOOL enabled;  // Is the script enabled?
@property (copy, readonly) NSString *name;  // the name of the script
@property (copy, readonly) NSString *path;  // the file system path of the disk
@property (copy, readonly) NSString *POSIXPath;  // the POSIX file system path of the disk


@end



/*
 * Movie File Suite
 */

// The System Events application
@interface SystemEventsApplication (MovieFileSuite)

- (SBElementArray<SystemEventsMovieData *> *) movieDatas;
- (SBElementArray<SystemEventsMovieFile *> *) movieFiles;

@end



/*
 * Processes Suite
 */

// The System Events application
@interface SystemEventsApplication (ProcessesSuite)

- (SBElementArray<SystemEventsApplicationProcess *> *) applicationProcesses;
- (SBElementArray<SystemEventsDeskAccessoryProcess *> *) deskAccessoryProcesses;
- (SBElementArray<SystemEventsProcess *> *) processes;
- (SBElementArray<SystemEventsUIElement *> *) UIElements;

@property (readonly) BOOL UIElementsEnabled;  // Are UI element events currently being processed?

@end

// An action that can be performed on the UI element
@interface SystemEventsAction : SBObject <SystemEventsGenericMethods>

@property (copy, readonly) NSString *objectDescription;  // what the action does
@property (copy, readonly) NSString *name;  // the name of the action

- (SystemEventsAction *) perform;  // cause the target process to behave as if the action were applied to its UI element

@end

// An named data value associated with the UI element
@interface SystemEventsAttribute : SBObject <SystemEventsGenericMethods>

@property (copy, readonly) NSString *name;  // the name of the attribute
@property (readonly) BOOL settable;  // Can the attribute be set?
@property (copy) id value;  // the current value of the attribute


@end

// A piece of the user interface of a process
@interface SystemEventsUIElement : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsAction *> *) actions;
- (SBElementArray<SystemEventsAttribute *> *) attributes;
- (SBElementArray<SystemEventsBrowser *> *) browsers;
- (SBElementArray<SystemEventsBusyIndicator *> *) busyIndicators;
- (SBElementArray<SystemEventsButton *> *) buttons;
- (SBElementArray<SystemEventsCheckbox *> *) checkboxes;
- (SBElementArray<SystemEventsColorWell *> *) colorWells;
- (SBElementArray<SystemEventsColumn *> *) columns;
- (SBElementArray<SystemEventsComboBox *> *) comboBoxes;
- (SBElementArray<SystemEventsDrawer *> *) drawers;
- (SBElementArray<SystemEventsGroup *> *) groups;
- (SBElementArray<SystemEventsGrowArea *> *) growAreas;
- (SBElementArray<SystemEventsImage *> *) images;
- (SBElementArray<SystemEventsIncrementor *> *) incrementors;
- (SBElementArray<NSArray *> *) lists;
- (SBElementArray<SystemEventsMenu *> *) menus;
- (SBElementArray<SystemEventsMenuBar *> *) menuBars;
- (SBElementArray<SystemEventsMenuBarItem *> *) menuBarItems;
- (SBElementArray<SystemEventsMenuButton *> *) menuButtons;
- (SBElementArray<SystemEventsMenuItem *> *) menuItems;
- (SBElementArray<SystemEventsOutline *> *) outlines;
- (SBElementArray<SystemEventsPopOver *> *) popOvers;
- (SBElementArray<SystemEventsPopUpButton *> *) popUpButtons;
- (SBElementArray<SystemEventsProgressIndicator *> *) progressIndicators;
- (SBElementArray<SystemEventsRadioButton *> *) radioButtons;
- (SBElementArray<SystemEventsRadioGroup *> *) radioGroups;
- (SBElementArray<SystemEventsRelevanceIndicator *> *) relevanceIndicators;
- (SBElementArray<SystemEventsRow *> *) rows;
- (SBElementArray<SystemEventsScrollArea *> *) scrollAreas;
- (SBElementArray<SystemEventsScrollBar *> *) scrollBars;
- (SBElementArray<SystemEventsSheet *> *) sheets;
- (SBElementArray<SystemEventsSlider *> *) sliders;
- (SBElementArray<SystemEventsSplitter *> *) splitters;
- (SBElementArray<SystemEventsSplitterGroup *> *) splitterGroups;
- (SBElementArray<SystemEventsStaticText *> *) staticTexts;
- (SBElementArray<SystemEventsTabGroup *> *) tabGroups;
- (SBElementArray<SystemEventsTable *> *) tables;
- (SBElementArray<SystemEventsTextArea *> *) textAreas;
- (SBElementArray<SystemEventsTextField *> *) textFields;
- (SBElementArray<SystemEventsToolbar *> *) toolbars;
- (SBElementArray<SystemEventsUIElement *> *) UIElements;
- (SBElementArray<SystemEventsValueIndicator *> *) valueIndicators;
- (SBElementArray<SystemEventsWindow *> *) windows;

@property (copy, readonly) id accessibilityDescription;  // a more complete description of the UI element and its capabilities
@property (copy, readonly) id objectDescription;  // the accessibility description, if available; otherwise, the role description
@property (copy, readonly) id enabled;  // Is the UI element enabled? ( Does it accept clicks? )
@property (copy, readonly) NSArray<SBObject *> *entireContents;  // a list of every UI element contained in this UI element and its child UI elements, to the limits of the tree
@property (copy) id focused;  // Is the focus on this UI element?
@property (copy, readonly) id help;  // an elaborate description of the UI element and its capabilities
@property (copy, readonly) id maximumValue;  // the maximum value that the UI element can take on
@property (copy, readonly) id minimumValue;  // the minimum value that the UI element can take on
@property (copy, readonly) NSString *name;  // the name of the UI Element, which identifies it within its container
@property (copy, readonly) id orientation;  // the orientation of the UI element
@property (copy) id position;  // the position of the UI element
@property (copy, readonly) NSString *role;  // an encoded description of the UI element and its capabilities
@property (copy, readonly) NSString *roleDescription;  // a more complete description of the UI element's role
@property (copy) id selected;  // Is the UI element selected?
@property (copy) id size;  // the size of the UI element
@property (copy, readonly) id subrole;  // an encoded description of the UI element and its capabilities
@property (copy, readonly) NSString *title;  // the title of the UI element as it appears on the screen
@property (copy) id value;  // the current value of the UI element

- (id) clickAt:(NSArray<NSNumber *> *)at;  // cause the target process to behave as if the UI element were clicked
- (SystemEventsUIElement *) select;  // set the selected property of the UI element

@end

// A browser belonging to a window
@interface SystemEventsBrowser : SystemEventsUIElement


@end

// A busy indicator belonging to a window
@interface SystemEventsBusyIndicator : SystemEventsUIElement


@end

// A button belonging to a window or scroll bar
@interface SystemEventsButton : SystemEventsUIElement


@end

// A checkbox belonging to a window
@interface SystemEventsCheckbox : SystemEventsUIElement


@end

// A color well belonging to a window
@interface SystemEventsColorWell : SystemEventsUIElement


@end

// A column belonging to a table
@interface SystemEventsColumn : SystemEventsUIElement


@end

// A combo box belonging to a window
@interface SystemEventsComboBox : SystemEventsUIElement


@end

// A drawer that may be extended from a window
@interface SystemEventsDrawer : SystemEventsUIElement


@end

// A group belonging to a window
@interface SystemEventsGroup : SystemEventsUIElement

- (SBElementArray<SystemEventsCheckbox *> *) checkboxes;
- (SBElementArray<SystemEventsStaticText *> *) staticTexts;


@end

// A grow area belonging to a window
@interface SystemEventsGrowArea : SystemEventsUIElement


@end

// An image belonging to a static text field
@interface SystemEventsImage : SystemEventsUIElement


@end

// A incrementor belonging to a window
@interface SystemEventsIncrementor : SystemEventsUIElement


@end

// A list belonging to a window
@interface SystemEventsList : SystemEventsUIElement


@end

// A menu belonging to a menu bar item
@interface SystemEventsMenu : SystemEventsUIElement

- (SBElementArray<SystemEventsMenuItem *> *) menuItems;


@end

// A menu bar belonging to a process
@interface SystemEventsMenuBar : SystemEventsUIElement

- (SBElementArray<SystemEventsMenu *> *) menus;
- (SBElementArray<SystemEventsMenuBarItem *> *) menuBarItems;


@end

// A menu bar item belonging to a menu bar
@interface SystemEventsMenuBarItem : SystemEventsUIElement

- (SBElementArray<SystemEventsMenu *> *) menus;


@end

// A menu button belonging to a window
@interface SystemEventsMenuButton : SystemEventsUIElement


@end

// A menu item belonging to a menu
@interface SystemEventsMenuItem : SystemEventsUIElement

- (SBElementArray<SystemEventsMenu *> *) menus;


@end

// A outline belonging to a window
@interface SystemEventsOutline : SystemEventsUIElement


@end

// A pop over belonging to a window
@interface SystemEventsPopOver : SystemEventsUIElement


@end

// A pop up button belonging to a window
@interface SystemEventsPopUpButton : SystemEventsUIElement


@end

// A process running on this computer
@interface SystemEventsProcess : SystemEventsUIElement

- (SBElementArray<SystemEventsMenuBar *> *) menuBars;
- (SBElementArray<SystemEventsWindow *> *) windows;

@property (readonly) BOOL acceptsHighLevelEvents;  // Is the process high-level event aware (accepts open application, open document, print document, and quit)?
@property (readonly) BOOL acceptsRemoteEvents;  // Does the process accept remote events?
@property (copy, readonly) NSString *architecture;  // the architecture in which the process is running
@property (readonly) BOOL backgroundOnly;  // Does the process run exclusively in the background?
@property (copy, readonly) NSString *bundleIdentifier;  // the bundle identifier of the process' application file
@property (readonly) BOOL Classic;  // Is the process running in the Classic environment?
@property (copy, readonly) NSString *creatorType;  // the OSType of the creator of the process (the signature)
@property (copy, readonly) NSString *displayedName;  // the name of the file from which the process was launched, as displayed in the User Interface
@property (copy, readonly) id file;  // the file from which the process was launched
@property (copy, readonly) NSString *fileType;  // the OSType of the file type of the process
@property BOOL frontmost;  // Is the process the frontmost process
@property (readonly) BOOL hasScriptingTerminology;  // Does the process have a scripting terminology, i.e., can it be scripted?
- (NSInteger) id;  // The unique identifier of the process
@property (copy, readonly) NSString *name;  // the name of the process
@property (readonly) NSInteger partitionSpaceUsed;  // the number of bytes currently used in the process' partition
@property (copy, readonly) id shortName;  // the short name of the file from which the process was launched
@property (readonly) NSInteger totalPartitionSize;  // the size of the partition with which the process was launched
@property (readonly) NSInteger unixId;  // The Unix process identifier of a process running in the native environment, or -1 for a process running in the Classic environment
@property BOOL visible;  // Is the process' layer visible?


@end

// A process launched from an application file
@interface SystemEventsApplicationProcess : SystemEventsProcess

@property (copy, readonly) id applicationFile;  // a reference to the application file from which this process was launched


@end

// A process launched from an desk accessory file
@interface SystemEventsDeskAccessoryProcess : SystemEventsProcess

@property (copy, readonly) SystemEventsAlias *deskAccessoryFile;  // a reference to the desk accessory file from which this process was launched


@end

// A progress indicator belonging to a window
@interface SystemEventsProgressIndicator : SystemEventsUIElement


@end

// A radio button belonging to a window
@interface SystemEventsRadioButton : SystemEventsUIElement


@end

// A radio button group belonging to a window
@interface SystemEventsRadioGroup : SystemEventsUIElement

- (SBElementArray<SystemEventsRadioButton *> *) radioButtons;


@end

// A relevance indicator belonging to a window
@interface SystemEventsRelevanceIndicator : SystemEventsUIElement


@end

// A row belonging to a table
@interface SystemEventsRow : SystemEventsUIElement


@end

// A scroll area belonging to a window
@interface SystemEventsScrollArea : SystemEventsUIElement


@end

// A scroll bar belonging to a window
@interface SystemEventsScrollBar : SystemEventsUIElement

- (SBElementArray<SystemEventsButton *> *) buttons;
- (SBElementArray<SystemEventsValueIndicator *> *) valueIndicators;


@end

// A sheet displayed over a window
@interface SystemEventsSheet : SystemEventsUIElement


@end

// A slider belonging to a window
@interface SystemEventsSlider : SystemEventsUIElement


@end

// A splitter belonging to a window
@interface SystemEventsSplitter : SystemEventsUIElement


@end

// A splitter group belonging to a window
@interface SystemEventsSplitterGroup : SystemEventsUIElement


@end

// A static text field belonging to a window
@interface SystemEventsStaticText : SystemEventsUIElement

- (SBElementArray<SystemEventsImage *> *) images;


@end

// A tab group belonging to a window
@interface SystemEventsTabGroup : SystemEventsUIElement


@end

// A table belonging to a window
@interface SystemEventsTable : SystemEventsUIElement


@end

// A text area belonging to a window
@interface SystemEventsTextArea : SystemEventsUIElement


@end

// A text field belonging to a window
@interface SystemEventsTextField : SystemEventsUIElement


@end

// A toolbar belonging to a window
@interface SystemEventsToolbar : SystemEventsUIElement


@end

// A value indicator ( thumb or slider ) belonging to a scroll bar
@interface SystemEventsValueIndicator : SystemEventsUIElement


@end

// A window belonging to a process
@interface SystemEventsWindow (ProcessesSuite)

- (SBElementArray<SystemEventsAction *> *) actions;
- (SBElementArray<SystemEventsAttribute *> *) attributes;
- (SBElementArray<SystemEventsBrowser *> *) browsers;
- (SBElementArray<SystemEventsBusyIndicator *> *) busyIndicators;
- (SBElementArray<SystemEventsButton *> *) buttons;
- (SBElementArray<SystemEventsCheckbox *> *) checkboxes;
- (SBElementArray<SystemEventsColorWell *> *) colorWells;
- (SBElementArray<SystemEventsComboBox *> *) comboBoxes;
- (SBElementArray<SystemEventsDrawer *> *) drawers;
- (SBElementArray<SystemEventsGroup *> *) groups;
- (SBElementArray<SystemEventsGrowArea *> *) growAreas;
- (SBElementArray<SystemEventsImage *> *) images;
- (SBElementArray<SystemEventsIncrementor *> *) incrementors;
- (SBElementArray<NSArray *> *) lists;
- (SBElementArray<SystemEventsMenuButton *> *) menuButtons;
- (SBElementArray<SystemEventsOutline *> *) outlines;
- (SBElementArray<SystemEventsPopOver *> *) popOvers;
- (SBElementArray<SystemEventsPopUpButton *> *) popUpButtons;
- (SBElementArray<SystemEventsProgressIndicator *> *) progressIndicators;
- (SBElementArray<SystemEventsRadioButton *> *) radioButtons;
- (SBElementArray<SystemEventsRadioGroup *> *) radioGroups;
- (SBElementArray<SystemEventsRelevanceIndicator *> *) relevanceIndicators;
- (SBElementArray<SystemEventsScrollArea *> *) scrollAreas;
- (SBElementArray<SystemEventsScrollBar *> *) scrollBars;
- (SBElementArray<SystemEventsSheet *> *) sheets;
- (SBElementArray<SystemEventsSlider *> *) sliders;
- (SBElementArray<SystemEventsSplitter *> *) splitters;
- (SBElementArray<SystemEventsSplitterGroup *> *) splitterGroups;
- (SBElementArray<SystemEventsStaticText *> *) staticTexts;
- (SBElementArray<SystemEventsTabGroup *> *) tabGroups;
- (SBElementArray<SystemEventsTable *> *) tables;
- (SBElementArray<SystemEventsTextArea *> *) textAreas;
- (SBElementArray<SystemEventsTextField *> *) textFields;
- (SBElementArray<SystemEventsToolbar *> *) toolbars;
- (SBElementArray<SystemEventsUIElement *> *) UIElements;

@property (copy, readonly) id accessibilityDescription;  // a more complete description of the window and its capabilities
@property (copy, readonly) id objectDescription;  // the accessibility description, if available; otherwise, the role description
@property (copy, readonly) id enabled;  // Is the window enabled? ( Does it accept clicks? )
@property (copy, readonly) NSArray<SBObject *> *entireContents;  // a list of every UI element contained in this window and its child UI elements, to the limits of the tree
@property (copy) id focused;  // Is the focus on this window?
@property (copy, readonly) id help;  // an elaborate description of the window and its capabilities
@property (copy, readonly) id maximumValue;  // the maximum value that the UI element can take on
@property (copy, readonly) id minimumValue;  // the minimum value that the UI element can take on
@property (copy, readonly) NSString *name;  // the name of the window, which identifies it within its container
@property (copy, readonly) id orientation;  // the orientation of the window
@property (copy) id position;  // the position of the window
@property (copy, readonly) NSString *role;  // an encoded description of the window and its capabilities
@property (copy, readonly) NSString *roleDescription;  // a more complete description of the window's role
@property (copy) id selected;  // Is the window selected?
@property (copy) id size;  // the size of the window
@property (copy, readonly) id subrole;  // an encoded description of the window and its capabilities
@property (copy, readonly) NSString *title;  // the title of the window as it appears on the screen
@property (copy) id value;  // the current value of the window

@end



/*
 * Property List Suite
 */

// The System Events application
@interface SystemEventsApplication (PropertyListSuite)

- (SBElementArray<SystemEventsPropertyListFile *> *) propertyListFiles;
- (SBElementArray<SystemEventsPropertyListItem *> *) propertyListItems;

@end

// A file containing data in Property List format
@interface SystemEventsPropertyListFile : SystemEventsFile

@property (copy) SystemEventsPropertyListItem *contents;  // the contents of the property list file; elements and properties of the property list item may be accessed as if they were elements and properties of the property list file


@end

// A unit of data in Property List format
@interface SystemEventsPropertyListItem : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsPropertyListItem *> *) propertyListItems;

@property (copy, readonly) NSNumber *kind;  // the kind of data stored in the property list item: boolean/data/date/list/number/record/string
@property (copy, readonly) NSString *name;  // the name of the property list item ( if any )
@property (copy) NSString *text;  // the text representation of the property list data
@property (copy) id value;  // the value of the property list item


@end



/*
 * QuickTime File Suite
 */

// The System Events application
@interface SystemEventsApplication (QuickTimeFileSuite)

- (SBElementArray<SystemEventsQuickTimeData *> *) QuickTimeDatas;
- (SBElementArray<SystemEventsQuickTimeFile *> *) QuickTimeFiles;

@end

// A unit of user data in a QuickTime file
@interface SystemEventsAnnotation : SBObject <SystemEventsGenericMethods>

@property (copy, readonly) NSString *fullText;  // the full text of the annotation
- (NSString *) id;  // the unique identifier of the annotation
@property (copy, readonly) NSString *name;  // the name of the annotation


@end

// Data in QuickTime format
@interface SystemEventsQuickTimeData : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsAnnotation *> *) annotations;
- (SBElementArray<SystemEventsTrack *> *) tracks;

@property (readonly) BOOL autoPlay;  // will the movie automatically start playing? (saved with QuickTime file)
@property (readonly) BOOL autoPresent;  // will the movie automatically start presenting? (saved with QuickTime file)
@property (readonly) BOOL autoQuitWhenDone;  // will the player automatically quit when done playing? (saved with QuickTime file)
@property (copy, readonly) NSDate *creationTime;  // the creation time of the QuickTime file
@property (readonly) NSInteger dataSize;  // the size of the QuickTime file data
@property (readonly) NSInteger duration;  // the duration of the QuickTime file, in terms of the time scale
@property (copy, readonly) NSString *href;  // the internet location to open when clicking on the movie (overrides track hrefs)
@property (readonly) BOOL looping;  // keep playing the movie in a loop?
@property (copy, readonly) NSDate *modificationTime;  // the modification time of the QuickTime file
@property (readonly) NSInteger preferredRate;  // the preferred rate of the QuickTime file
@property (readonly) NSInteger preferredVolume;  // the preferred volume of the QuickTime file
@property (readonly) SystemEventsPrmd presentationMode;  // mode in which the movie will be presented
@property (readonly) SystemEventsMvsz presentationSize;  // size at which the movie will be presented
@property (readonly) BOOL storedStream;  // is this a stored streaming movie?
@property (readonly) NSInteger timeScale;  // the time scale of the QuickTime file


@end



/*
 * Audio File Suite
 */

// Data in Audio format
@interface SystemEventsAudioData : SystemEventsQuickTimeData


@end



/*
 * Movie File Suite
 */

// Data in Movie format
@interface SystemEventsMovieData : SystemEventsQuickTimeData

@property (copy, readonly) NSArray<NSNumber *> *bounds;  // the bounding rectangle of the movie file
@property (copy, readonly) NSArray<NSNumber *> *naturalDimensions;  // the dimensions the movie has when it is not scaled
@property (readonly) NSInteger previewDuration;  // the preview duration of the movie file
@property (readonly) NSInteger previewTime;  // the preview time of the movie file


@end



/*
 * QuickTime File Suite
 */

// A file containing data in QuickTime format
@interface SystemEventsQuickTimeFile : SystemEventsFile

@property (copy, readonly) SystemEventsQuickTimeData *contents;  // the contents of the QuickTime file; elements and properties of the QuickTime data may be accessed as if they were elements and properties of the QuickTime file


@end



/*
 * Audio File Suite
 */

// A file containing data in Audio format
@interface SystemEventsAudioFile : SystemEventsQuickTimeFile

@property (copy, readonly) SystemEventsAudioData *contents;  // the contents of the audio file; elements and properties of the audio data may be accessed as if they were elements and properties of the audio file


@end



/*
 * Movie File Suite
 */

// A file containing data in Movie format
@interface SystemEventsMovieFile : SystemEventsQuickTimeFile

@property (copy, readonly) SystemEventsMovieData *contents;  // the contents of the movie file; elements and properties of the movie data may be accessed as if they were elements and properties of the movie file


@end



/*
 * QuickTime File Suite
 */

// A track in a QuickTime file
@interface SystemEventsTrack : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsAnnotation *> *) annotations;

@property (readonly) NSInteger audioChannelCount;  // the number of channels in the audio
@property (readonly) BOOL audioCharacteristic;  // can the track be heard?
@property (readonly) double audioSampleRate;  // the sample rate of the audio in kHz
@property (readonly) NSInteger audioSampleSize;  // the size of uncompressed audio samples in bits
@property (copy, readonly) NSDate *creationTime;  // the creation time of the track
@property (copy, readonly) NSString *dataFormat;  // the data format
@property (readonly) NSInteger dataRate;  // the data rate (bytes/sec) of the track
@property (readonly) NSInteger dataSize;  // the size of the track data
@property (copy, readonly) NSArray<NSNumber *> *dimensions;  // the current dimensions of the track
@property (readonly) NSInteger duration;  // the duration of the track, in terms of the time scale
@property BOOL enabled;  // should this track be used when the movie is playing?
@property BOOL highQuality;  // is the track high quality?
@property (copy, readonly) NSString *href;  // the internet location to open when clicking on the track
@property (copy, readonly) NSString *kind;  // the name of the media in the track, in the current language (e.g., 'Sound', 'Video', 'Text', ...)
@property (copy, readonly) NSDate *modificationTime;  // the modification time of the track
@property (copy, readonly) NSString *name;  // the name of the track
@property NSInteger startTime;  // the time delay before this track starts playing
@property (copy, readonly) NSString *type;  // the type of media in the track (e.g., 'soun', 'vide', 'text', ...)
@property (copy, readonly) NSString *typeClass;  // deprecated: use "type" instead ( included only to resolve a terminology conflict, script text will be updated upon compilation )
@property (readonly) NSInteger videoDepth;  // the color depth of the video
@property (readonly) BOOL visualCharacteristic;  // can the track be seen?


@end



/*
 * XML Suite
 */

// The System Events application
@interface SystemEventsApplication (XMLSuite)

- (SBElementArray<SystemEventsXMLData *> *) XMLDatas;
- (SBElementArray<SystemEventsXMLFile *> *) XMLFiles;

@end

// A named value associated with a unit of data in XML format
@interface SystemEventsXMLAttribute : SBObject <SystemEventsGenericMethods>

@property (copy, readonly) NSString *name;  // the name of the XML attribute
@property (copy) id value;  // the value of the XML attribute


@end

// Data in XML format
@interface SystemEventsXMLData : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsXMLElement *> *) XMLElements;

- (NSString *) id;  // the unique identifier of the XML data
@property (copy) NSString *name;  // the name of the XML data
@property (copy) NSString *text;  // the text representation of the XML data


@end

// A unit of data in XML format
@interface SystemEventsXMLElement : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsXMLAttribute *> *) XMLAttributes;
- (SBElementArray<SystemEventsXMLElement *> *) XMLElements;

- (NSString *) id;  // the unique identifier of the XML element
@property (copy, readonly) NSString *name;  // the name of the XML element
@property (copy) id value;  // the value of the XML element


@end

// A file containing data in XML format
@interface SystemEventsXMLFile : SystemEventsFile

@property (copy) SystemEventsXMLData *contents;  // the contents of the XML file; elements and properties of the XML data may be accessed as if they were elements and properties of the XML file


@end



/*
 * Type Definitions
 */

@interface SystemEventsPrintSettings : SBObject <SystemEventsGenericMethods>

@property NSInteger copies;  // the number of copies of a document to be printed
@property BOOL collating;  // Should printed copies be collated?
@property NSInteger startingPage;  // the first page of the document to be printed
@property NSInteger endingPage;  // the last page of the document to be printed
@property NSInteger pagesAcross;  // number of logical pages laid across a physical page
@property NSInteger pagesDown;  // number of logical pages laid out down a physical page
@property (copy) NSDate *requestedPrintTime;  // the time at which the desktop printer should print the document
@property SystemEventsEnum errorHandling;  // how errors are handled
@property (copy) NSString *faxNumber;  // for fax number
@property (copy) NSString *targetPrinter;  // for target printer


@end



/*
 * Scripting Definition Suite
 */

// The System Events application
@interface SystemEventsApplication (ScriptingDefinitionSuite)

@property (copy, readonly) SystemEventsScriptingDefinitionObject *scriptingDefinition;  // The scripting definition of the System Events application

@end

// A class within a suite within a scripting definition
@interface SystemEventsScriptingClass : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsScriptingElement *> *) scriptingElements;
- (SBElementArray<SystemEventsScriptingProperty *> *) scriptingProperties;

@property (copy, readonly) NSString *name;  // The name of the class
- (NSString *) id;  // The unique identifier of the class
@property (copy, readonly) NSString *objectDescription;  // The description of the class
@property (readonly) BOOL hidden;  // Is the class hidden?
@property (copy, readonly) NSString *pluralName;  // The plural name of the class
@property (copy, readonly) NSString *suiteName;  // The name of the suite to which this class belongs
@property (copy, readonly) SystemEventsScriptingClass *superclass;  // The class from which this class inherits


@end

// A command within a suite within a scripting definition
@interface SystemEventsScriptingCommand : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsScriptingParameter *> *) scriptingParameters;

@property (copy, readonly) NSString *name;  // The name of the command
- (NSString *) id;  // The unique identifier of the command
@property (copy, readonly) NSString *objectDescription;  // The description of the command
@property (copy, readonly) SystemEventsScriptingParameter *directParameter;  // The direct parameter of the command
@property (readonly) BOOL hidden;  // Is the command hidden?
@property (copy, readonly) SystemEventsScriptingResultObject *scriptingResult;  // The object or data returned by this command
@property (copy, readonly) NSString *suiteName;  // The name of the suite to which this command belongs


@end

// The scripting definition of the System Events applicaation
@interface SystemEventsScriptingDefinitionObject : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsScriptingSuite *> *) scriptingSuites;


@end

// An element within a class within a suite within a scripting definition
@interface SystemEventsScriptingElement : SystemEventsScriptingClass


@end

// An enumeration within a suite within a scripting definition
@interface SystemEventsScriptingEnumeration : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsScriptingEnumerator *> *) scriptingEnumerators;

@property (copy, readonly) NSString *name;  // The name of the enumeration
- (NSString *) id;  // The unique identifier of the enumeration
@property (readonly) BOOL hidden;  // Is the enumeration hidden?


@end

// An enumerator within an enumeration within a suite within a scripting definition
@interface SystemEventsScriptingEnumerator : SBObject <SystemEventsGenericMethods>

@property (copy, readonly) NSString *name;  // The name of the enumerator
- (NSString *) id;  // The unique identifier of the enumerator
@property (copy, readonly) NSString *objectDescription;  // The description of the enumerator
@property (readonly) BOOL hidden;  // Is the enumerator hidden?


@end

// A parameter within a command within a suite within a scripting definition
@interface SystemEventsScriptingParameter : SBObject <SystemEventsGenericMethods>

@property (copy, readonly) NSString *name;  // The name of the parameter
- (NSString *) id;  // The unique identifier of the parameter
@property (copy, readonly) NSString *objectDescription;  // The description of the parameter
@property (readonly) BOOL hidden;  // Is the parameter hidden?
@property (copy, readonly) NSString *kind;  // The kind of object or data specified by this parameter
@property (readonly) BOOL optional;  // Is the parameter optional?


@end

// A property within a class within a suite within a scripting definition
@interface SystemEventsScriptingProperty : SBObject <SystemEventsGenericMethods>

@property (copy, readonly) NSString *name;  // The name of the property
- (NSString *) id;  // The unique identifier of the property
@property (readonly) SystemEventsAccs access;  // The type of access to this property
@property (copy, readonly) NSString *objectDescription;  // The description of the property
@property (readonly) BOOL enumerated;  // Is the property's value an enumerator?
@property (readonly) BOOL hidden;  // Is the property hidden?
@property (copy, readonly) NSString *kind;  // The kind of object or data returned by this property
@property (readonly) BOOL listed;  // Is the property's value a list?


@end

// The result of a command within a suite within a scripting definition
@interface SystemEventsScriptingResultObject : SBObject <SystemEventsGenericMethods>

@property (copy, readonly) NSString *objectDescription;  // The description of the property
@property (readonly) BOOL enumerated;  // Is the scripting result's value an enumerator?
@property (copy, readonly) NSString *kind;  // The kind of object or data returned by this property
@property (readonly) BOOL listed;  // Is the scripting result's value a list?


@end

// A suite within a scripting definition
@interface SystemEventsScriptingSuite : SBObject <SystemEventsGenericMethods>

- (SBElementArray<SystemEventsScriptingCommand *> *) scriptingCommands;
- (SBElementArray<SystemEventsScriptingClass *> *) scriptingClasses;
- (SBElementArray<SystemEventsScriptingEnumeration *> *) scriptingEnumerations;

@property (copy, readonly) NSString *name;  // The name of the suite
- (NSString *) id;  // The unique identifier of the suite
@property (copy, readonly) NSString *objectDescription;  // The description of the suite
@property (readonly) BOOL hidden;  // Is the suite hidden?


@end

