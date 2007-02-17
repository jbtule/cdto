/*
 * FNReferenceGlue.m
 *
 * /System/Library/CoreServices/Finder.app
 * 2007-02-16 20:30:45 (CST)
 *
 */

#import "FNReferenceGlue.h"

@implementation FNReference

- (NSString *)description {
	return [FNReferenceRenderer render: AS_aemReference];
}

/* Commands */

- (FN_0x28NOTAVAILABLE0x29AddToFavorites_Command *)_0x28NOTAVAILABLE0x29AddToFavorites_ {
    return [FN_0x28NOTAVAILABLE0x29AddToFavorites_Command commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'ffav'
                    directParameter: nil
                    parentReference: self];
}

- (FN_0x28NOTAVAILABLE0x29AddToFavorites_Command *)_0x28NOTAVAILABLE0x29AddToFavorites_:(id)directParameter {
    return [FN_0x28NOTAVAILABLE0x29AddToFavorites_Command commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'ffav'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNActivateCommand *)activate {
    return [FNActivateCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'actv'
                    directParameter: nil
                    parentReference: self];
}

- (FNActivateCommand *)activate:(id)directParameter {
    return [FNActivateCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'actv'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNCleanUpCommand *)cleanUp {
    return [FNCleanUpCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'fclu'
                    directParameter: nil
                    parentReference: self];
}

- (FNCleanUpCommand *)cleanUp:(id)directParameter {
    return [FNCleanUpCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'fclu'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNCloseCommand *)close {
    return [FNCloseCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clos'
                    directParameter: nil
                    parentReference: self];
}

- (FNCloseCommand *)close:(id)directParameter {
    return [FNCloseCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clos'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNCopy_Command *)copy_ {
    return [FNCopy_Command commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'copy'
                    directParameter: nil
                    parentReference: self];
}

- (FNCopy_Command *)copy_:(id)directParameter {
    return [FNCopy_Command commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'copy'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNCountCommand *)count {
    return [FNCountCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'cnte'
                    directParameter: nil
                    parentReference: self];
}

- (FNCountCommand *)count:(id)directParameter {
    return [FNCountCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'cnte'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNDataSizeCommand *)dataSize {
    return [FNDataSizeCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'dsiz'
                    directParameter: nil
                    parentReference: self];
}

- (FNDataSizeCommand *)dataSize:(id)directParameter {
    return [FNDataSizeCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'dsiz'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNDeleteCommand *)delete {
    return [FNDeleteCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'delo'
                    directParameter: nil
                    parentReference: self];
}

- (FNDeleteCommand *)delete:(id)directParameter {
    return [FNDeleteCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'delo'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNDuplicateCommand *)duplicate {
    return [FNDuplicateCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clon'
                    directParameter: nil
                    parentReference: self];
}

- (FNDuplicateCommand *)duplicate:(id)directParameter {
    return [FNDuplicateCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clon'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNEjectCommand *)eject {
    return [FNEjectCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'ejct'
                    directParameter: nil
                    parentReference: self];
}

- (FNEjectCommand *)eject:(id)directParameter {
    return [FNEjectCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'ejct'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNEmptyCommand *)empty {
    return [FNEmptyCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'empt'
                    directParameter: nil
                    parentReference: self];
}

- (FNEmptyCommand *)empty:(id)directParameter {
    return [FNEmptyCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'empt'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNEraseCommand *)erase {
    return [FNEraseCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'fera'
                    directParameter: nil
                    parentReference: self];
}

- (FNEraseCommand *)erase:(id)directParameter {
    return [FNEraseCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'fera'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNExistsCommand *)exists {
    return [FNExistsCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'doex'
                    directParameter: nil
                    parentReference: self];
}

- (FNExistsCommand *)exists:(id)directParameter {
    return [FNExistsCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'doex'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNFindCommand *)find {
    return [FNFindCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'ffnd'
                    directParameter: nil
                    parentReference: self];
}

- (FNFindCommand *)find:(id)directParameter {
    return [FNFindCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'ffnd'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNGetCommand *)get {
    return [FNGetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'getd'
                    directParameter: nil
                    parentReference: self];
}

- (FNGetCommand *)get:(id)directParameter {
    return [FNGetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'getd'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNLaunchCommand *)launch {
    return [FNLaunchCommand commandWithAppData: AS_appData
                         eventClass: 'ascr'
                            eventID: 'noop'
                    directParameter: nil
                    parentReference: self];
}

- (FNLaunchCommand *)launch:(id)directParameter {
    return [FNLaunchCommand commandWithAppData: AS_appData
                         eventClass: 'ascr'
                            eventID: 'noop'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNMakeCommand *)make {
    return [FNMakeCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'crel'
                    directParameter: nil
                    parentReference: self];
}

- (FNMakeCommand *)make:(id)directParameter {
    return [FNMakeCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'crel'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNMoveCommand *)move {
    return [FNMoveCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'move'
                    directParameter: nil
                    parentReference: self];
}

- (FNMoveCommand *)move:(id)directParameter {
    return [FNMoveCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'move'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNOpenCommand *)open {
    return [FNOpenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'odoc'
                    directParameter: nil
                    parentReference: self];
}

- (FNOpenCommand *)open:(id)directParameter {
    return [FNOpenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'odoc'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNOpenLocationCommand *)openLocation {
    return [FNOpenLocationCommand commandWithAppData: AS_appData
                         eventClass: 'GURL'
                            eventID: 'GURL'
                    directParameter: nil
                    parentReference: self];
}

- (FNOpenLocationCommand *)openLocation:(id)directParameter {
    return [FNOpenLocationCommand commandWithAppData: AS_appData
                         eventClass: 'GURL'
                            eventID: 'GURL'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNPrintCommand *)print {
    return [FNPrintCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'pdoc'
                    directParameter: nil
                    parentReference: self];
}

- (FNPrintCommand *)print:(id)directParameter {
    return [FNPrintCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'pdoc'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNQuitCommand *)quit {
    return [FNQuitCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'quit'
                    directParameter: nil
                    parentReference: self];
}

- (FNQuitCommand *)quit:(id)directParameter {
    return [FNQuitCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'quit'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNReopenCommand *)reopen {
    return [FNReopenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'rapp'
                    directParameter: nil
                    parentReference: self];
}

- (FNReopenCommand *)reopen:(id)directParameter {
    return [FNReopenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'rapp'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNRestartCommand *)restart {
    return [FNRestartCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'rest'
                    directParameter: nil
                    parentReference: self];
}

- (FNRestartCommand *)restart:(id)directParameter {
    return [FNRestartCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'rest'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNRevealCommand *)reveal {
    return [FNRevealCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'mvis'
                    directParameter: nil
                    parentReference: self];
}

- (FNRevealCommand *)reveal:(id)directParameter {
    return [FNRevealCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'mvis'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNRunCommand *)run {
    return [FNRunCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'oapp'
                    directParameter: nil
                    parentReference: self];
}

- (FNRunCommand *)run:(id)directParameter {
    return [FNRunCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'oapp'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNSelectCommand *)select {
    return [FNSelectCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'slct'
                    directParameter: nil
                    parentReference: self];
}

- (FNSelectCommand *)select:(id)directParameter {
    return [FNSelectCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'slct'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNSetCommand *)set {
    return [FNSetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'setd'
                    directParameter: nil
                    parentReference: self];
}

- (FNSetCommand *)set:(id)directParameter {
    return [FNSetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'setd'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNShutDownCommand *)shutDown {
    return [FNShutDownCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'shut'
                    directParameter: nil
                    parentReference: self];
}

- (FNShutDownCommand *)shutDown:(id)directParameter {
    return [FNShutDownCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'shut'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNSleepCommand *)sleep {
    return [FNSleepCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'slep'
                    directParameter: nil
                    parentReference: self];
}

- (FNSleepCommand *)sleep:(id)directParameter {
    return [FNSleepCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'slep'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNSortCommand *)sort {
    return [FNSortCommand commandWithAppData: AS_appData
                         eventClass: 'DATA'
                            eventID: 'SORT'
                    directParameter: nil
                    parentReference: self];
}

- (FNSortCommand *)sort:(id)directParameter {
    return [FNSortCommand commandWithAppData: AS_appData
                         eventClass: 'DATA'
                            eventID: 'SORT'
                    directParameter: directParameter
                    parentReference: self];
}

- (FNUpdateCommand *)update {
    return [FNUpdateCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'fupd'
                    directParameter: nil
                    parentReference: self];
}

- (FNUpdateCommand *)update:(id)directParameter {
    return [FNUpdateCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'fupd'
                    directParameter: directParameter
                    parentReference: self];
}


/* Elements */

- (FNReference *)FinderWindows {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'brow']];
}

- (FNReference *)aliasFiles {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'alia']];
}

- (FNReference *)aliasList {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'alst']];
}

- (FNReference *)application {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'capp']];
}

- (FNReference *)applicationFiles {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'appf']];
}

- (FNReference *)applicationProcesses {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'pcap']];
}

- (FNReference *)clippingWindows {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'lwnd']];
}

- (FNReference *)clippings {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'clpf']];
}

- (FNReference *)columns {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'lvcl']];
}

- (FNReference *)computerObject {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'ccmp']];
}

- (FNReference *)containers {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'ctnr']];
}

- (FNReference *)deskAccessoryProcesses {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'pcda']];
}

- (FNReference *)desktopObject {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cdsk']];
}

- (FNReference *)desktopWindow {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'dktw']];
}

- (FNReference *)disks {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cdis']];
}

- (FNReference *)documentFiles {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'docf']];
}

- (FNReference *)files {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'file']];
}

- (FNReference *)folders {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cfol']];
}

- (FNReference *)iconFamily {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'ifam']];
}

- (FNReference *)internetLocationFiles {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'inlf']];
}

- (FNReference *)items {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cobj']];
}

- (FNReference *)label {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'clbl']];
}

- (FNReference *)packages {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'pack']];
}

- (FNReference *)preferences {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cprf']];
}

- (FNReference *)preferencesWindow {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'pwnd']];
}

- (FNReference *)processes {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'prcs']];
}

- (FNReference *)trashObject {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'ctrs']];
}

- (FNReference *)windows {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cwin']];
}


/* Properties */

- (FNReference *)FinderPreferences {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pfrp']];
}

- (FNReference *)URL {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pURL']];
}

- (FNReference *)acceptsHighLevelEvents {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'isab']];
}

- (FNReference *)acceptsRemoteEvents {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'revt']];
}

- (FNReference *)allNameExtensionsShowing {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'psnx']];
}

- (FNReference *)applicationFile {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'appf']];
}

- (FNReference *)arrangement {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'iarr']];
}

- (FNReference *)backgroundColor {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'colr']];
}

- (FNReference *)backgroundPicture {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ibkg']];
}

- (FNReference *)bounds {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pbnd']];
}

- (FNReference *)calculatesFolderSizes {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'sfsz']];
}

- (FNReference *)capacity {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'capa']];
}

- (FNReference *)class_ {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pcls']];
}

- (FNReference *)clipboard {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pcli']];
}

- (FNReference *)clippingWindow {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwnd']];
}

- (FNReference *)closeable {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'hclb']];
}

- (FNReference *)collapsed {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'wshd']];
}

- (FNReference *)color {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'colr']];
}

- (FNReference *)columnViewOptions {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'cvop']];
}

- (FNReference *)comment {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'comt']];
}

- (FNReference *)completelyExpanded {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pexc']];
}

- (FNReference *)computerContainer {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pcmp']];
}

- (FNReference *)container {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ctnr']];
}

- (FNReference *)containerWindow {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'cwnd']];
}

- (FNReference *)creationDate {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ascd']];
}

- (FNReference *)creatorType {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'fcrt']];
}

- (FNReference *)currentPanel {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'panl']];
}

- (FNReference *)currentView {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pvew']];
}

- (FNReference *)delayBeforeSpringing {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'dela']];
}

- (FNReference *)description_ {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'dscr']];
}

- (FNReference *)deskAccessoryFile {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'dafi']];
}

- (FNReference *)desktop {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'desk']];
}

- (FNReference *)desktopPicture {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'dpic']];
}

- (FNReference *)desktopPosition {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'dpos']];
}

- (FNReference *)desktopShowsConnectedServers {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pdsv']];
}

- (FNReference *)desktopShowsHardDisks {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pdhd']];
}

- (FNReference *)desktopShowsRemovableMedia {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pdrm']];
}

- (FNReference *)disclosesPreviewPane {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'dspr']];
}

- (FNReference *)disk {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'cdis']];
}

- (FNReference *)displayedName {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'dnam']];
}

- (FNReference *)ejectable {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'isej']];
}

- (FNReference *)entireContents {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ects']];
}

- (FNReference *)everyonesPrivileges {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'gstp']];
}

- (FNReference *)expandable {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pexa']];
}

- (FNReference *)expanded {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pexp']];
}

- (FNReference *)extensionHidden {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'hidx']];
}

- (FNReference *)file {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'file']];
}

- (FNReference *)fileType {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'asty']];
}

- (FNReference *)floating {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'isfl']];
}

- (FNReference *)foldersOpenInNewWindows {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ponw']];
}

- (FNReference *)foldersSpringOpen {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'sprg']];
}

- (FNReference *)format {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'dfmt']];
}

- (FNReference *)freeSpace {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'frsp']];
}

- (FNReference *)frontmost {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pisf']];
}

- (FNReference *)group {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'sgrp']];
}

- (FNReference *)groupPrivileges {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'gppr']];
}

- (FNReference *)hasScriptingTerminology {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'hscr']];
}

- (FNReference *)home {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'home']];
}

- (FNReference *)icon {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'iimg']];
}

- (FNReference *)iconSize {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lvis']];
}

- (FNReference *)iconViewOptions {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'icop']];
}

- (FNReference *)id_ {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ID  ']];
}

- (FNReference *)ignorePrivileges {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'igpr']];
}

- (FNReference *)index {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pidx']];
}

- (FNReference *)informationWindow {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'iwnd']];
}

- (FNReference *)insertionLocation {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pins']];
}

- (FNReference *)item {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'cobj']];
}

- (FNReference *)journalingEnabled {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'Jrnl']];
}

- (FNReference *)kind {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'kind']];
}

- (FNReference *)labelIndex {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'labi']];
}

- (FNReference *)labelPosition {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lpos']];
}

- (FNReference *)large32BitIcon {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'il32']];
}

- (FNReference *)large4BitIcon {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'icl4']];
}

- (FNReference *)large8BitIcon {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'icl8']];
}

- (FNReference *)large8BitMask {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'l8mk']];
}

- (FNReference *)largeMonochromeIconAndMask {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ICN#']];
}

- (FNReference *)listViewOptions {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lvop']];
}

- (FNReference *)localVolume {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'isrv']];
}

- (FNReference *)location {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'iloc']];
}

- (FNReference *)locked {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'aslk']];
}

- (FNReference *)maximumWidth {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'clwm']];
}

- (FNReference *)minimumSize {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'mprt']];
}

- (FNReference *)minimumWidth {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'clwn']];
}

- (FNReference *)modal {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pmod']];
}

- (FNReference *)modificationDate {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'asmo']];
}

- (FNReference *)name {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pnam']];
}

- (FNReference *)nameExtension {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'nmxt']];
}

- (FNReference *)newWindowTarget {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pnwt']];
}

- (FNReference *)newWindowsOpenInColumnView {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pocv']];
}

- (FNReference *)opensInClassic {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'Clsc']];
}

- (FNReference *)originalItem {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'orig']];
}

- (FNReference *)owner {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'sown']];
}

- (FNReference *)ownerPrivileges {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ownr']];
}

- (FNReference *)partitionSpaceUsed {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pusd']];
}

- (FNReference *)physicalSize {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'phys']];
}

- (FNReference *)position {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'posn']];
}

- (FNReference *)preferredSize {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'appt']];
}

- (FNReference *)productVersion {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ver2']];
}

- (FNReference *)properties {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pALL']];
}

- (FNReference *)resizable {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'prsz']];
}

- (FNReference *)selection {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'sele']];
}

- (FNReference *)showsIcon {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'shic']];
}

- (FNReference *)showsIconPreview {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'prvw']];
}

- (FNReference *)showsItemInfo {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'mnfo']];
}

- (FNReference *)showsPreviewColumn {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'shpr']];
}

- (FNReference *)sidebarWidth {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'sbwi']];
}

- (FNReference *)size {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ptsz']];
}

- (FNReference *)small32BitIcon {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'is32']];
}

- (FNReference *)small4BitIcon {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ics4']];
}

- (FNReference *)small8BitIcon {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ics8']];
}

- (FNReference *)small8BitMask {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ics8']];
}

- (FNReference *)smallMonochromeIconAndMask {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ics#']];
}

- (FNReference *)sortColumn {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'srtc']];
}

- (FNReference *)sortDirection {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'sord']];
}

- (FNReference *)startup {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'istd']];
}

- (FNReference *)startupDisk {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'sdsk']];
}

- (FNReference *)stationery {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pspd']];
}

- (FNReference *)statusbarVisible {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'stvi']];
}

- (FNReference *)suggestedSize {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'sprt']];
}

- (FNReference *)target {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'fvtg']];
}

- (FNReference *)textSize {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'fsiz']];
}

- (FNReference *)titled {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ptit']];
}

- (FNReference *)toolbarVisible {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'tbvi']];
}

- (FNReference *)totalPartitionSize {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'appt']];
}

- (FNReference *)trash {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'trsh']];
}

- (FNReference *)usesRelativeDates {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'urdt']];
}

- (FNReference *)version_ {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'vers']];
}

- (FNReference *)visible {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pvis']];
}

- (FNReference *)warnsBeforeEmptying {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'warn']];
}

- (FNReference *)width {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'clwd']];
}

- (FNReference *)window {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'cwin']];
}

- (FNReference *)zoomable {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'iszm']];
}

- (FNReference *)zoomed {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pzum']];
}

- (FNReference *)zoomedFullSize {
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'zumf']];
}


/***********************************/

// ordinal selectors

- (FNReference *)first {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference first]];
}

- (FNReference *)middle {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference middle]];
}

- (FNReference *)last {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference last]];
}

- (FNReference *)any {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference any]];
}

// by-index, by-name, by-id selectors
 
- (FNReference *)at:(long)index {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference at: index]];
}

- (FNReference *)byIndex:(id)index { // index is normally NSNumber, but may occasionally be other types
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byIndex: index]];
}

- (FNReference *)byName:(NSString *)name {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byName: name]];
}

- (FNReference *)byID:(id)id_ {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byID: id_]];
}

// by-relative-position selectors

- (FNReference *)previous:(ASConstant *)class_ {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference previous: [class_ AS_code]]];
}

- (FNReference *)next:(ASConstant *)class_ {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference next: [class_ AS_code]]];
}

// by-range selector

- (FNReference *)at:(long)fromIndex to:(long)toIndex {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference at: fromIndex to: toIndex]];
}

- (FNReference *)byRange:(id)fromObject to:(id)toObject {
    // takes two con-based references, with other values being expanded as necessary
    if ([fromObject isKindOfClass: [FNReference class]])
        fromObject = [fromObject AS_aemReference];
    if ([toObject isKindOfClass: [FNReference class]])
        toObject = [toObject AS_aemReference];
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byRange: fromObject to: toObject]];
}

// by-test selector

- (FNReference *)byTest:(FNReference *)testReference {
    // note: getting AS_aemReference won't work for ASDynamicReference
    return [FNReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference byTest: [testReference AS_aemReference]]];
}

// insertion location selectors

- (FNReference *)start {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference start]];
}

- (FNReference *)end {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference end]];
}

- (FNReference *)before {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference before]];
}

- (FNReference *)after {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference after]];
}

// Comparison and logic tests

- (FNReference *)greaterThan:(id)object {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference greaterThan: object]];
}

- (FNReference *)greaterOrEquals:(id)object {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference greaterOrEquals: object]];
}

- (FNReference *)equals:(id)object {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference equals: object]];
}

- (FNReference *)notEquals:(id)object {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference notEquals: object]];
}

- (FNReference *)lessThan:(id)object {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference lessThan: object]];
}

- (FNReference *)lessOrEquals:(id)object {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference lessOrEquals: object]];
}

- (FNReference *)startsWith:(id)object {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference startsWith: object]];
}

- (FNReference *)endsWith:(id)object {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference endsWith: object]];
}

- (FNReference *)contains:(id)object {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference contains: object]];
}

- (FNReference *)isIn:(id)object {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference isIn: object]];
}

- (FNReference *)AND:(id)remainingOperands {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference AND: remainingOperands]];
}

- (FNReference *)OR:(id)remainingOperands {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference OR: remainingOperands]];
}

- (FNReference *)NOT {
    return [FNReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference NOT]];
}

@end


