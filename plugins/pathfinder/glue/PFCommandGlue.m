/*
 * PFCommandGlue.m
 *
 * /Applications/Path Finder.app
 * 2007-02-19 14:24:27 (EST)
 *
 */

#import "PFCommandGlue.h"

@implementation PFPFInfoCommand

@end


@implementation PFPFOpenCommand

- (PFPFOpenCommand *)using:(id)value {
    [AS_event setParameter: value forKeyword: 'usin'];
    return self;
}

@end


@implementation PFActivateCommand

@end


@implementation PFAddToFavoritesCommand

@end


@implementation PFCloseCommand

- (PFCloseCommand *)saving:(id)value {
    [AS_event setParameter: value forKeyword: 'savo'];
    return self;
}

- (PFCloseCommand *)savingIn:(id)value {
    [AS_event setParameter: value forKeyword: 'kfil'];
    return self;
}

@end


@implementation PFCountCommand

- (PFCountCommand *)each:(id)value {
    [AS_event setParameter: value forKeyword: 'kocl'];
    return self;
}

@end


@implementation PFDeleteCommand

@end


@implementation PFDuplicateCommand

- (PFDuplicateCommand *)replacing:(id)value {
    [AS_event setParameter: value forKeyword: 'alrp'];
    return self;
}

- (PFDuplicateCommand *)to:(id)value {
    [AS_event setParameter: value forKeyword: 'insh'];
    return self;
}

- (PFDuplicateCommand *)withProperties:(id)value {
    [AS_event setParameter: value forKeyword: 'prdt'];
    return self;
}

@end


@implementation PFEjectCommand

@end


@implementation PFEmptyCommand

@end


@implementation PFExistsCommand

@end


@implementation PFGetCommand

@end


@implementation PFGetURLCommand

@end


@implementation PFLaunchCommand

@end


@implementation PFMakeCommand

- (PFMakeCommand *)at:(id)value {
    [AS_event setParameter: value forKeyword: 'insh'];
    return self;
}

- (PFMakeCommand *)new_:(id)value {
    [AS_event setParameter: value forKeyword: 'kocl'];
    return self;
}

- (PFMakeCommand *)withContents:(id)value {
    [AS_event setParameter: value forKeyword: 'data'];
    return self;
}

- (PFMakeCommand *)withProperties:(id)value {
    [AS_event setParameter: value forKeyword: 'prdt'];
    return self;
}

@end


@implementation PFMoveCommand

- (PFMoveCommand *)replacing:(id)value {
    [AS_event setParameter: value forKeyword: 'alrp'];
    return self;
}

- (PFMoveCommand *)to:(id)value {
    [AS_event setParameter: value forKeyword: 'insh'];
    return self;
}

@end


@implementation PFOpenCommand

@end


@implementation PFOpenLocationCommand

- (PFOpenLocationCommand *)window:(id)value {
    [AS_event setParameter: value forKeyword: 'WIND'];
    return self;
}

@end


@implementation PFPrintCommand

- (PFPrintCommand *)printDialog:(id)value {
    [AS_event setParameter: value forKeyword: 'pdlg'];
    return self;
}

- (PFPrintCommand *)withProperties:(id)value {
    [AS_event setParameter: value forKeyword: 'prdt'];
    return self;
}

@end


@implementation PFQuitCommand

- (PFQuitCommand *)saving:(id)value {
    [AS_event setParameter: value forKeyword: 'savo'];
    return self;
}

@end


@implementation PFReopenCommand

@end


@implementation PFRevealCommand

@end


@implementation PFRunCommand

@end


@implementation PFSaveCommand

- (PFSaveCommand *)as:(id)value {
    [AS_event setParameter: value forKeyword: 'fltp'];
    return self;
}

- (PFSaveCommand *)in:(id)value {
    [AS_event setParameter: value forKeyword: 'kfil'];
    return self;
}

@end


@implementation PFSelectCommand

@end


@implementation PFSetCommand

- (PFSetCommand *)to:(id)value {
    [AS_event setParameter: value forKeyword: 'data'];
    return self;
}

@end


