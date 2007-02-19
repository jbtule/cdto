/*
 * TMLCommandGlue.m
 *
 * /Applications/Utilities/Terminal.app
 * 2007-02-16 20:26:02 (CST)
 *
 */

#import "TMLCommandGlue.h"

@implementation TMLGetURLCommand

@end


@implementation TMLActivateCommand

@end


@implementation TMLCloseCommand

- (TMLCloseCommand *)saving:(id)value {
    [AS_event setParameter: value forKeyword: 'savo'];
    return self;
}

- (TMLCloseCommand *)savingIn:(id)value {
    [AS_event setParameter: value forKeyword: 'kfil'];
    return self;
}

@end


@implementation TMLCountCommand

- (TMLCountCommand *)each:(id)value {
    [AS_event setParameter: value forKeyword: 'kocl'];
    return self;
}

@end


@implementation TMLDeleteCommand

@end


@implementation TMLDoScriptCommand

- (TMLDoScriptCommand *)in:(id)value {
    [AS_event setParameter: value forKeyword: 'kfil'];
    return self;
}

- (TMLDoScriptCommand *)withCommand:(id)value {
    [AS_event setParameter: value forKeyword: 'cmnd'];
    return self;
}

@end


@implementation TMLDuplicateCommand

- (TMLDuplicateCommand *)to:(id)value {
    [AS_event setParameter: value forKeyword: 'insh'];
    return self;
}

- (TMLDuplicateCommand *)withProperties:(id)value {
    [AS_event setParameter: value forKeyword: 'prdt'];
    return self;
}

@end


@implementation TMLExistsCommand

@end


@implementation TMLGetCommand

@end


@implementation TMLLaunchCommand

@end


@implementation TMLMakeCommand

- (TMLMakeCommand *)at:(id)value {
    [AS_event setParameter: value forKeyword: 'insh'];
    return self;
}

- (TMLMakeCommand *)new_:(id)value {
    [AS_event setParameter: value forKeyword: 'kocl'];
    return self;
}

- (TMLMakeCommand *)withData:(id)value {
    [AS_event setParameter: value forKeyword: 'data'];
    return self;
}

- (TMLMakeCommand *)withProperties:(id)value {
    [AS_event setParameter: value forKeyword: 'prdt'];
    return self;
}

@end


@implementation TMLMoveCommand

- (TMLMoveCommand *)to:(id)value {
    [AS_event setParameter: value forKeyword: 'insh'];
    return self;
}

@end


@implementation TMLOpenCommand

@end


@implementation TMLOpenLocationCommand

- (TMLOpenLocationCommand *)window:(id)value {
    [AS_event setParameter: value forKeyword: 'WIND'];
    return self;
}

@end


@implementation TMLPrintCommand

- (TMLPrintCommand *)printDialog:(id)value {
    [AS_event setParameter: value forKeyword: 'pdlg'];
    return self;
}

- (TMLPrintCommand *)withProperties:(id)value {
    [AS_event setParameter: value forKeyword: 'prdt'];
    return self;
}

@end


@implementation TMLQuitCommand

- (TMLQuitCommand *)saving:(id)value {
    [AS_event setParameter: value forKeyword: 'savo'];
    return self;
}

@end


@implementation TMLReopenCommand

@end


@implementation TMLRunCommand

@end


@implementation TMLSaveCommand

- (TMLSaveCommand *)as:(id)value {
    [AS_event setParameter: value forKeyword: 'fltp'];
    return self;
}

- (TMLSaveCommand *)in:(id)value {
    [AS_event setParameter: value forKeyword: 'kfil'];
    return self;
}

@end


@implementation TMLSetCommand

- (TMLSetCommand *)to:(id)value {
    [AS_event setParameter: value forKeyword: 'data'];
    return self;
}

@end


