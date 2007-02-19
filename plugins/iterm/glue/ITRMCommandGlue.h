/*
 * ITRMCommandGlue.h
 *
 * /Volumes/iTerm/iTerm.app
 * 2007-02-18 21:09:47 (CST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"


@interface ITRMActivateCommand : ASCommand
@end


@interface ITRMCloseCommand : ASCommand
- (ITRMCloseCommand *)saving:(id)value;
- (ITRMCloseCommand *)savingIn:(id)value;
@end


@interface ITRMCountCommand : ASCommand
- (ITRMCountCommand *)each:(id)value;
@end


@interface ITRMDeleteCommand : ASCommand
@end


@interface ITRMDuplicateCommand : ASCommand
- (ITRMDuplicateCommand *)to:(id)value;
- (ITRMDuplicateCommand *)withProperties:(id)value;
@end


@interface ITRMExecCommand : ASCommand
- (ITRMExecCommand *)command:(id)value;
@end


@interface ITRMExistsCommand : ASCommand
@end


@interface ITRMGetCommand : ASCommand
@end


@interface ITRMLaunchCommand : ASCommand
@end


@interface ITRMLaunch_Command : ASCommand
- (ITRMLaunch_Command *)session:(id)value;
@end


@interface ITRMMakeCommand : ASCommand
- (ITRMMakeCommand *)at:(id)value;
- (ITRMMakeCommand *)new_:(id)value;
- (ITRMMakeCommand *)withData:(id)value;
- (ITRMMakeCommand *)withProperties:(id)value;
@end


@interface ITRMMoveCommand : ASCommand
- (ITRMMoveCommand *)to:(id)value;
@end


@interface ITRMOpenCommand : ASCommand
@end


@interface ITRMOpenLocationCommand : ASCommand
- (ITRMOpenLocationCommand *)window:(id)value;
@end


@interface ITRMPrintCommand : ASCommand
- (ITRMPrintCommand *)printDialog:(id)value;
- (ITRMPrintCommand *)withProperties:(id)value;
@end


@interface ITRMQuitCommand : ASCommand
- (ITRMQuitCommand *)saving:(id)value;
@end


@interface ITRMReopenCommand : ASCommand
@end


@interface ITRMRunCommand : ASCommand
@end


@interface ITRMSaveCommand : ASCommand
- (ITRMSaveCommand *)as:(id)value;
- (ITRMSaveCommand *)in:(id)value;
@end


@interface ITRMSelectCommand : ASCommand
@end


@interface ITRMSetCommand : ASCommand
- (ITRMSetCommand *)to:(id)value;
@end


@interface ITRMTerminateCommand : ASCommand
@end


@interface ITRMWriteCommand : ASCommand
- (ITRMWriteCommand *)contentsOfFile:(id)value;
- (ITRMWriteCommand *)text:(id)value;
@end


