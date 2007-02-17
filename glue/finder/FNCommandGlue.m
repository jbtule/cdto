/*
 * FNCommandGlue.m
 *
 * /System/Library/CoreServices/Finder.app
 * 2007-02-16 20:30:45 (CST)
 *
 */

#import "FNCommandGlue.h"

@implementation FN_0x28NOTAVAILABLE0x29AddToFavorites_Command

@end


@implementation FNActivateCommand

@end


@implementation FNCleanUpCommand

- (FNCleanUpCommand *)by:(id)value {
    [AS_event setParameter: value forKeyword: 'by  '];
    return self;
}

@end


@implementation FNCloseCommand

@end


@implementation FNCopy_Command

@end


@implementation FNCountCommand

- (FNCountCommand *)each:(id)value {
    [AS_event setParameter: value forKeyword: 'kocl'];
    return self;
}

@end


@implementation FNDataSizeCommand

- (FNDataSizeCommand *)as:(id)value {
    [AS_event setParameter: value forKeyword: 'rtyp'];
    return self;
}

@end


@implementation FNDeleteCommand

@end


@implementation FNDuplicateCommand

- (FNDuplicateCommand *)replacing:(id)value {
    [AS_event setParameter: value forKeyword: 'alrp'];
    return self;
}

- (FNDuplicateCommand *)routingSuppressed:(id)value {
    [AS_event setParameter: value forKeyword: 'rout'];
    return self;
}

- (FNDuplicateCommand *)to:(id)value {
    [AS_event setParameter: value forKeyword: 'insh'];
    return self;
}

@end


@implementation FNEjectCommand

@end


@implementation FNEmptyCommand

@end


@implementation FNEraseCommand

@end


@implementation FNExistsCommand

@end


@implementation FNFindCommand

@end


@implementation FNGetCommand

@end


@implementation FNLaunchCommand

@end


@implementation FNMakeCommand

- (FNMakeCommand *)at:(id)value {
    [AS_event setParameter: value forKeyword: 'insh'];
    return self;
}

- (FNMakeCommand *)new_:(id)value {
    [AS_event setParameter: value forKeyword: 'kocl'];
    return self;
}

- (FNMakeCommand *)to:(id)value {
    [AS_event setParameter: value forKeyword: 'to  '];
    return self;
}

- (FNMakeCommand *)withProperties:(id)value {
    [AS_event setParameter: value forKeyword: 'prdt'];
    return self;
}

@end


@implementation FNMoveCommand

- (FNMoveCommand *)positionedAt:(id)value {
    [AS_event setParameter: value forKeyword: 'mvpl'];
    return self;
}

- (FNMoveCommand *)replacing:(id)value {
    [AS_event setParameter: value forKeyword: 'alrp'];
    return self;
}

- (FNMoveCommand *)routingSuppressed:(id)value {
    [AS_event setParameter: value forKeyword: 'rout'];
    return self;
}

- (FNMoveCommand *)to:(id)value {
    [AS_event setParameter: value forKeyword: 'insh'];
    return self;
}

@end


@implementation FNOpenCommand

- (FNOpenCommand *)using:(id)value {
    [AS_event setParameter: value forKeyword: 'usin'];
    return self;
}

- (FNOpenCommand *)withProperties:(id)value {
    [AS_event setParameter: value forKeyword: 'prdt'];
    return self;
}

@end


@implementation FNOpenLocationCommand

- (FNOpenLocationCommand *)window:(id)value {
    [AS_event setParameter: value forKeyword: 'WIND'];
    return self;
}

@end


@implementation FNPrintCommand

- (FNPrintCommand *)withProperties:(id)value {
    [AS_event setParameter: value forKeyword: 'prdt'];
    return self;
}

@end


@implementation FNQuitCommand

@end


@implementation FNReopenCommand

@end


@implementation FNRestartCommand

@end


@implementation FNRevealCommand

@end


@implementation FNRunCommand

@end


@implementation FNSelectCommand

@end


@implementation FNSetCommand

- (FNSetCommand *)to:(id)value {
    [AS_event setParameter: value forKeyword: 'data'];
    return self;
}

@end


@implementation FNShutDownCommand

@end


@implementation FNSleepCommand

@end


@implementation FNSortCommand

- (FNSortCommand *)by:(id)value {
    [AS_event setParameter: value forKeyword: 'by  '];
    return self;
}

@end


@implementation FNUpdateCommand

- (FNUpdateCommand *)necessity:(id)value {
    [AS_event setParameter: value forKeyword: 'nec?'];
    return self;
}

- (FNUpdateCommand *)registeringApplications:(id)value {
    [AS_event setParameter: value forKeyword: 'reg?'];
    return self;
}

@end


