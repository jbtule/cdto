/*
 * ITRMCommandGlue.m
 *
 * /Volumes/iTerm/iTerm.app
 * 2007-02-18 21:09:47 (CST)
 *
 */

#import "ITRMCommandGlue.h"

@implementation ITRMActivateCommand

@end


@implementation ITRMCloseCommand

- (ITRMCloseCommand *)saving:(id)value {
    [AS_event setParameter: value forKeyword: 'savo'];
    return self;
}

- (ITRMCloseCommand *)savingIn:(id)value {
    [AS_event setParameter: value forKeyword: 'kfil'];
    return self;
}

@end


@implementation ITRMCountCommand

- (ITRMCountCommand *)each:(id)value {
    [AS_event setParameter: value forKeyword: 'kocl'];
    return self;
}

@end


@implementation ITRMDeleteCommand

@end


@implementation ITRMDuplicateCommand

- (ITRMDuplicateCommand *)to:(id)value {
    [AS_event setParameter: value forKeyword: 'insh'];
    return self;
}

- (ITRMDuplicateCommand *)withProperties:(id)value {
    [AS_event setParameter: value forKeyword: 'prdt'];
    return self;
}

@end


@implementation ITRMExecCommand

- (ITRMExecCommand *)command:(id)value {
    [AS_event setParameter: value forKeyword: 'Cmnd'];
    return self;
}

@end


@implementation ITRMExistsCommand

@end


@implementation ITRMGetCommand

@end


@implementation ITRMLaunchCommand

@end


@implementation ITRMLaunch_Command

- (ITRMLaunch_Command *)session:(id)value {
    [AS_event setParameter: value forKeyword: 'Pssn'];
    return self;
}

@end


@implementation ITRMMakeCommand

- (ITRMMakeCommand *)at:(id)value {
    [AS_event setParameter: value forKeyword: 'insh'];
    return self;
}

- (ITRMMakeCommand *)new_:(id)value {
    [AS_event setParameter: value forKeyword: 'kocl'];
    return self;
}

- (ITRMMakeCommand *)withData:(id)value {
    [AS_event setParameter: value forKeyword: 'data'];
    return self;
}

- (ITRMMakeCommand *)withProperties:(id)value {
    [AS_event setParameter: value forKeyword: 'prdt'];
    return self;
}

@end


@implementation ITRMMoveCommand

- (ITRMMoveCommand *)to:(id)value {
    [AS_event setParameter: value forKeyword: 'insh'];
    return self;
}

@end


@implementation ITRMOpenCommand

@end


@implementation ITRMOpenLocationCommand

- (ITRMOpenLocationCommand *)window:(id)value {
    [AS_event setParameter: value forKeyword: 'WIND'];
    return self;
}

@end


@implementation ITRMPrintCommand

- (ITRMPrintCommand *)printDialog:(id)value {
    [AS_event setParameter: value forKeyword: 'pdlg'];
    return self;
}

- (ITRMPrintCommand *)withProperties:(id)value {
    [AS_event setParameter: value forKeyword: 'prdt'];
    return self;
}

@end


@implementation ITRMQuitCommand

- (ITRMQuitCommand *)saving:(id)value {
    [AS_event setParameter: value forKeyword: 'savo'];
    return self;
}

@end


@implementation ITRMReopenCommand

@end


@implementation ITRMRunCommand

@end


@implementation ITRMSaveCommand

- (ITRMSaveCommand *)as:(id)value {
    [AS_event setParameter: value forKeyword: 'fltp'];
    return self;
}

- (ITRMSaveCommand *)in:(id)value {
    [AS_event setParameter: value forKeyword: 'kfil'];
    return self;
}

@end


@implementation ITRMSelectCommand

@end


@implementation ITRMSetCommand

- (ITRMSetCommand *)to:(id)value {
    [AS_event setParameter: value forKeyword: 'data'];
    return self;
}

@end


@implementation ITRMTerminateCommand

@end


@implementation ITRMWriteCommand

- (ITRMWriteCommand *)contentsOfFile:(id)value {
    [AS_event setParameter: value forKeyword: 'iFil'];
    return self;
}

- (ITRMWriteCommand *)text:(id)value {
    [AS_event setParameter: value forKeyword: 'iTxt'];
    return self;
}

@end


