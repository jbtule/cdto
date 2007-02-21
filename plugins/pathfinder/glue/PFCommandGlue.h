/*
 * PFCommandGlue.h
 *
 * /Applications/Path Finder.app
 * 2007-02-19 14:24:27 (EST)
 *
 */

#import <Appscript/Appscript.h>


#import "Appscript/Appscript.h"


@interface PFPFInfoCommand : ASCommand
@end


@interface PFPFOpenCommand : ASCommand
- (PFPFOpenCommand *)using:(id)value;
@end


@interface PFActivateCommand : ASCommand
@end


@interface PFAddToFavoritesCommand : ASCommand
@end


@interface PFCloseCommand : ASCommand
- (PFCloseCommand *)saving:(id)value;
- (PFCloseCommand *)savingIn:(id)value;
@end


@interface PFCountCommand : ASCommand
- (PFCountCommand *)each:(id)value;
@end


@interface PFDeleteCommand : ASCommand
@end


@interface PFDuplicateCommand : ASCommand
- (PFDuplicateCommand *)replacing:(id)value;
- (PFDuplicateCommand *)to:(id)value;
- (PFDuplicateCommand *)withProperties:(id)value;
@end


@interface PFEjectCommand : ASCommand
@end


@interface PFEmptyCommand : ASCommand
@end


@interface PFExistsCommand : ASCommand
@end


@interface PFGetCommand : ASCommand
@end


@interface PFGetURLCommand : ASCommand
@end


@interface PFLaunchCommand : ASCommand
@end


@interface PFMakeCommand : ASCommand
- (PFMakeCommand *)at:(id)value;
- (PFMakeCommand *)new_:(id)value;
- (PFMakeCommand *)withContents:(id)value;
- (PFMakeCommand *)withProperties:(id)value;
@end


@interface PFMoveCommand : ASCommand
- (PFMoveCommand *)replacing:(id)value;
- (PFMoveCommand *)to:(id)value;
@end


@interface PFOpenCommand : ASCommand
@end


@interface PFOpenLocationCommand : ASCommand
- (PFOpenLocationCommand *)window:(id)value;
@end


@interface PFPrintCommand : ASCommand
- (PFPrintCommand *)printDialog:(id)value;
- (PFPrintCommand *)withProperties:(id)value;
@end


@interface PFQuitCommand : ASCommand
- (PFQuitCommand *)saving:(id)value;
@end


@interface PFReopenCommand : ASCommand
@end


@interface PFRevealCommand : ASCommand
@end


@interface PFRunCommand : ASCommand
@end


@interface PFSaveCommand : ASCommand
- (PFSaveCommand *)as:(id)value;
- (PFSaveCommand *)in:(id)value;
@end


@interface PFSelectCommand : ASCommand
@end


@interface PFSetCommand : ASCommand
- (PFSetCommand *)to:(id)value;
@end


