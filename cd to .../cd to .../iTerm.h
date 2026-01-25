/*
 * iTerm.h
 * Scripting Bridge header for iTerm2
 */

#import <AppKit/AppKit.h>
#import <ScriptingBridge/ScriptingBridge.h>

@class iTermApplication, iTermWindow, iTermTab, iTermSession;

enum iTermSaveOptions {
    iTermSaveOptionsYes = 'yes ',
    iTermSaveOptionsNo = 'no  ',
    iTermSaveOptionsAsk = 'ask '
};
typedef enum iTermSaveOptions iTermSaveOptions;

@protocol iTermGenericMethods

- (void) closeSaving:(iTermSaveOptions)saving savingIn:(NSURL *)savingIn;
- (BOOL) exists;

@end

// The iTerm application
@interface iTermApplication : SBApplication

- (SBElementArray<iTermWindow *> *) windows;
- (SBElementArray<iTermWindow *> *) terminalWindows;

@property (copy, readonly) NSString *name;
@property (readonly) BOOL frontmost;
@property (copy, readonly) NSString *version;

- (void) activate;
- (iTermWindow *) createWindowWithDefaultProfileCommand:(NSString *)command;

@end

// An iTerm window
@interface iTermWindow : SBObject <iTermGenericMethods>

- (SBElementArray<iTermTab *> *) tabs;
- (SBElementArray<iTermTab *> *) currentTabs;

@property (copy, readonly) NSString *name;
- (NSString *) id;
@property NSInteger index;
@property NSRect bounds;
@property (readonly) BOOL closeable;
@property (readonly) BOOL miniaturizable;
@property BOOL miniaturized;
@property (readonly) BOOL resizable;
@property BOOL visible;
@property (readonly) BOOL zoomable;
@property BOOL zoomed;
@property BOOL frontmost;
@property NSPoint position;

- (iTermTab *) currentTab;
- (iTermSession *) currentSession;

@end

// An iTerm tab
@interface iTermTab : SBObject <iTermGenericMethods>

- (SBElementArray<iTermSession *> *) sessions;

@property (copy, readonly) NSString *name;
- (iTermSession *) currentSession;

@end

// An iTerm session
@interface iTermSession : SBObject <iTermGenericMethods>

@property (copy, readonly) NSString *contents;
@property (copy, readonly) NSString *name;
@property (copy, readonly) NSString *uniqueID;
@property (copy, readonly) NSArray<NSString *> *columns;
@property (copy, readonly) NSArray<NSString *> *rows;
@property (copy) NSString *backgroundColor;
@property (copy, readonly) NSString *tty;

- (void) writeContentsOfFile:(NSString *)contentsOfFile text:(NSString *)text;

@end
