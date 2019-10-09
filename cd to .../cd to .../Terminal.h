/*
 * Terminal.h
 */

#import <AppKit/AppKit.h>
#import <ScriptingBridge/ScriptingBridge.h>


@class TerminalApplication, TerminalWindow, TerminalSettingsSet, TerminalTab;

enum TerminalSaveOptions {
	TerminalSaveOptionsYes = 'yes ' /* Save the file. */,
	TerminalSaveOptionsNo = 'no  ' /* Do not save the file. */,
	TerminalSaveOptionsAsk = 'ask ' /* Ask the user whether or not to save the file. */
};
typedef enum TerminalSaveOptions TerminalSaveOptions;

enum TerminalPrintingErrorHandling {
	TerminalPrintingErrorHandlingStandard = 'lwst' /* Standard PostScript error handling */,
	TerminalPrintingErrorHandlingDetailed = 'lwdt' /* print a detailed report of PostScript errors */
};
typedef enum TerminalPrintingErrorHandling TerminalPrintingErrorHandling;

@protocol TerminalGenericMethods

- (void) closeSaving:(TerminalSaveOptions)saving savingIn:(NSURL *)savingIn;  // Close a document.
- (void) saveIn:(NSURL *)in_;  // Save a document.
- (void) printWithProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) delete;  // Delete an object.
- (void) duplicateTo:(SBObject *)to withProperties:(NSDictionary *)withProperties;  // Copy object(s) and put the copies at a new location.
- (BOOL) exists;  // Verify if an object exists.
- (void) moveTo:(SBObject *)to;  // Move object(s) to a new location.

@end



/*
 * Standard Suite
 */

// The application‘s top-level scripting object.
@interface TerminalApplication : SBApplication

- (SBElementArray<TerminalWindow *> *) windows;

@property (copy, readonly) NSString *name;  // The name of the application.
@property (readonly) BOOL frontmost;  // Is this the frontmost (active) application?
@property (copy, readonly) NSString *version;  // The version of the application.

- (void) open:(NSArray<NSURL *> *)x;  // Open a document.
- (void) print:(id)x withProperties:(NSDictionary *)withProperties printDialog:(BOOL)printDialog;  // Print a document.
- (void) quitSaving:(TerminalSaveOptions)saving;  // Quit the application.
- (TerminalTab *) doScript:(NSString *)x in:(id)in_;  // Runs a UNIX shell script or command.

@end

// A window.
@interface TerminalWindow : SBObject <TerminalGenericMethods>

- (SBElementArray<TerminalTab *> *) tabs;

@property (copy, readonly) NSString *name;  // The full title of the window.
- (NSInteger) id;  // The unique identifier of the window.
@property NSInteger index;  // The index of the window, ordered front to back.
@property NSRect bounds;  // The bounding rectangle of the window.
@property (readonly) BOOL closeable;  // Whether the window has a close box.
@property (readonly) BOOL miniaturizable;  // Whether the window can be minimized.
@property BOOL miniaturized;  // Whether the window is currently minimized.
@property (readonly) BOOL resizable;  // Whether the window can be resized.
@property BOOL visible;  // Whether the window is currently visible.
@property (readonly) BOOL zoomable;  // Whether the window can be zoomed.
@property BOOL zoomed;  // Whether the window is currently zoomed.
@property BOOL frontmost;  // Whether the window is currently the frontmost Terminal window.
@property (copy) TerminalTab *selectedTab;
@property NSPoint position;  // The position of the window, relative to the upper left corner of the screen.
@property NSPoint origin;  // The position of the window, relative to the lower left corner of the screen.
@property NSPoint size;  // The width and height of the window
@property NSRect frame;  // The bounding rectangle, relative to the lower left corner of the screen.


@end



/*
 * Terminal Suite
 */

@interface TerminalApplication (TerminalSuite)

- (SBElementArray<TerminalSettingsSet *> *) settingsSets;

@property (copy) TerminalSettingsSet *defaultSettings;  // The settings set used for new windows.
@property (copy) TerminalSettingsSet *startupSettings;  // The settings set used for the window created on application startup.

@end

// A set of settings.
@interface TerminalSettingsSet : SBObject <TerminalGenericMethods>

- (NSInteger) id;  // The unique identifier of the settings set.
@property (copy) NSString *name;  // The name of the settings set.
@property NSInteger numberOfRows;  // The number of rows displayed in the tab.
@property NSInteger numberOfColumns;  // The number of columns displayed in the tab.
@property (copy) NSColor *cursorColor;  // The cursor color for the tab.
@property (copy) NSColor *backgroundColor;  // The background color for the tab.
@property (copy) NSColor *normalTextColor;  // The normal text color for the tab.
@property (copy) NSColor *boldTextColor;  // The bold text color for the tab.
@property (copy) NSString *fontName;  // The name of the font used to display the tab’s contents.
@property NSInteger fontSize;  // The size of the font used to display the tab’s contents.
@property BOOL fontAntialiasing;  // Whether the font used to display the tab’s contents is antialiased.
@property (copy) NSArray<NSString *> *cleanCommands;  // The processes which will be ignored when checking whether a tab can be closed without showing a prompt.
@property BOOL titleDisplaysDeviceName;  // Whether the title contains the device name.
@property BOOL titleDisplaysShellPath;  // Whether the title contains the shell path.
@property BOOL titleDisplaysWindowSize;  // Whether the title contains the tab’s size, in rows and columns.
@property BOOL titleDisplaysSettingsName;  // Whether the title contains the settings name.
@property BOOL titleDisplaysCustomTitle;  // Whether the title contains a custom title.
@property (copy) NSString *customTitle;  // The tab’s custom title.


@end

// A tab.
@interface TerminalTab : SBObject <TerminalGenericMethods>

@property NSInteger numberOfRows;  // The number of rows displayed in the tab.
@property NSInteger numberOfColumns;  // The number of columns displayed in the tab.
@property (copy, readonly) NSString *contents;  // The currently visible contents of the tab.
@property (copy, readonly) NSString *history;  // The contents of the entire scrolling buffer of the tab.
@property (readonly) BOOL busy;  // Whether the tab is busy running a process.
@property (copy, readonly) NSArray<NSString *> *processes;  // The processes currently running in the tab.
@property BOOL selected;  // Whether the tab is selected.
@property BOOL titleDisplaysCustomTitle;  // Whether the title contains a custom title.
@property (copy) NSString *customTitle;  // The tab’s custom title.
@property (copy, readonly) NSString *tty;  // The tab’s TTY device.
@property (copy) TerminalSettingsSet *currentSettings;  // The set of settings which control the tab’s behavior and appearance.
@property (copy) NSColor *cursorColor;  // The cursor color for the tab.
@property (copy) NSColor *backgroundColor;  // The background color for the tab.
@property (copy) NSColor *normalTextColor;  // The normal text color for the tab.
@property (copy) NSColor *boldTextColor;  // The bold text color for the tab.
@property (copy) NSArray<NSString *> *cleanCommands;  // The processes which will be ignored when checking whether a tab can be closed without showing a prompt.
@property BOOL titleDisplaysDeviceName;  // Whether the title contains the device name.
@property BOOL titleDisplaysShellPath;  // Whether the title contains the shell path.
@property BOOL titleDisplaysWindowSize;  // Whether the title contains the tab’s size, in rows and columns.
@property BOOL titleDisplaysFileName;  // Whether the title contains the file name.
@property (copy) NSString *fontName;  // The name of the font used to display the tab’s contents.
@property NSInteger fontSize;  // The size of the font used to display the tab’s contents.
@property BOOL fontAntialiasing;  // Whether the font used to display the tab’s contents is antialiased.


@end

