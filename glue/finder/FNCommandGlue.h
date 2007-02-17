/*
 * FNCommandGlue.h
 *
 * /System/Library/CoreServices/Finder.app
 * 2007-02-16 20:30:45 (CST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"


@interface FN_0x28NOTAVAILABLE0x29AddToFavorites_Command : ASCommand
@end


@interface FNActivateCommand : ASCommand
@end


@interface FNCleanUpCommand : ASCommand
- (FNCleanUpCommand *)by:(id)value;
@end


@interface FNCloseCommand : ASCommand
@end


@interface FNCopy_Command : ASCommand
@end


@interface FNCountCommand : ASCommand
- (FNCountCommand *)each:(id)value;
@end


@interface FNDataSizeCommand : ASCommand
- (FNDataSizeCommand *)as:(id)value;
@end


@interface FNDeleteCommand : ASCommand
@end


@interface FNDuplicateCommand : ASCommand
- (FNDuplicateCommand *)replacing:(id)value;
- (FNDuplicateCommand *)routingSuppressed:(id)value;
- (FNDuplicateCommand *)to:(id)value;
@end


@interface FNEjectCommand : ASCommand
@end


@interface FNEmptyCommand : ASCommand
@end


@interface FNEraseCommand : ASCommand
@end


@interface FNExistsCommand : ASCommand
@end


@interface FNFindCommand : ASCommand
@end


@interface FNGetCommand : ASCommand
@end


@interface FNLaunchCommand : ASCommand
@end


@interface FNMakeCommand : ASCommand
- (FNMakeCommand *)at:(id)value;
- (FNMakeCommand *)new_:(id)value;
- (FNMakeCommand *)to:(id)value;
- (FNMakeCommand *)withProperties:(id)value;
@end


@interface FNMoveCommand : ASCommand
- (FNMoveCommand *)positionedAt:(id)value;
- (FNMoveCommand *)replacing:(id)value;
- (FNMoveCommand *)routingSuppressed:(id)value;
- (FNMoveCommand *)to:(id)value;
@end


@interface FNOpenCommand : ASCommand
- (FNOpenCommand *)using:(id)value;
- (FNOpenCommand *)withProperties:(id)value;
@end


@interface FNOpenLocationCommand : ASCommand
- (FNOpenLocationCommand *)window:(id)value;
@end


@interface FNPrintCommand : ASCommand
- (FNPrintCommand *)withProperties:(id)value;
@end


@interface FNQuitCommand : ASCommand
@end


@interface FNReopenCommand : ASCommand
@end


@interface FNRestartCommand : ASCommand
@end


@interface FNRevealCommand : ASCommand
@end


@interface FNRunCommand : ASCommand
@end


@interface FNSelectCommand : ASCommand
@end


@interface FNSetCommand : ASCommand
- (FNSetCommand *)to:(id)value;
@end


@interface FNShutDownCommand : ASCommand
@end


@interface FNSleepCommand : ASCommand
@end


@interface FNSortCommand : ASCommand
- (FNSortCommand *)by:(id)value;
@end


@interface FNUpdateCommand : ASCommand
- (FNUpdateCommand *)necessity:(id)value;
- (FNUpdateCommand *)registeringApplications:(id)value;
@end


