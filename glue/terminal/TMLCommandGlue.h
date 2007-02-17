/*
 * TMLCommandGlue.h
 *
 * /Applications/Utilities/Terminal.app
 * 2007-02-16 20:26:02 (CST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"


@interface TMLGetURLCommand : ASCommand
@end


@interface TMLActivateCommand : ASCommand
@end


@interface TMLCloseCommand : ASCommand
- (TMLCloseCommand *)saving:(id)value;
- (TMLCloseCommand *)savingIn:(id)value;
@end


@interface TMLCountCommand : ASCommand
- (TMLCountCommand *)each:(id)value;
@end


@interface TMLDeleteCommand : ASCommand
@end


@interface TMLDoScriptCommand : ASCommand
- (TMLDoScriptCommand *)in:(id)value;
- (TMLDoScriptCommand *)withCommand:(id)value;
@end


@interface TMLDuplicateCommand : ASCommand
- (TMLDuplicateCommand *)to:(id)value;
- (TMLDuplicateCommand *)withProperties:(id)value;
@end


@interface TMLExistsCommand : ASCommand
@end


@interface TMLGetCommand : ASCommand
@end


@interface TMLLaunchCommand : ASCommand
@end


@interface TMLMakeCommand : ASCommand
- (TMLMakeCommand *)at:(id)value;
- (TMLMakeCommand *)new_:(id)value;
- (TMLMakeCommand *)withData:(id)value;
- (TMLMakeCommand *)withProperties:(id)value;
@end


@interface TMLMoveCommand : ASCommand
- (TMLMoveCommand *)to:(id)value;
@end


@interface TMLOpenCommand : ASCommand
@end


@interface TMLOpenLocationCommand : ASCommand
- (TMLOpenLocationCommand *)window:(id)value;
@end


@interface TMLPrintCommand : ASCommand
- (TMLPrintCommand *)printDialog:(id)value;
- (TMLPrintCommand *)withProperties:(id)value;
@end


@interface TMLQuitCommand : ASCommand
- (TMLQuitCommand *)saving:(id)value;
@end


@interface TMLReopenCommand : ASCommand
@end


@interface TMLRunCommand : ASCommand
@end


@interface TMLSaveCommand : ASCommand
- (TMLSaveCommand *)as:(id)value;
- (TMLSaveCommand *)in:(id)value;
@end


@interface TMLSetCommand : ASCommand
- (TMLSetCommand *)to:(id)value;
@end


