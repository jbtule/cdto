/*
 * PFReferenceGlue.m
 *
 * /Applications/Path Finder.app
 * 2007-02-19 14:24:27 (EST)
 *
 */

#import "PFReferenceGlue.h"

@implementation PFReference

- (NSString *)description {
	return [PFReferenceRenderer render: AS_aemReference];
}

/* Commands */

- (PFPFInfoCommand *)PFInfo {
    return [PFPFInfoCommand commandWithAppData: AS_appData
                         eventClass: 'PFdR'
                            eventID: 'Info'
                    directParameter: nil
                    parentReference: self];
}

- (PFPFInfoCommand *)PFInfo:(id)directParameter {
    return [PFPFInfoCommand commandWithAppData: AS_appData
                         eventClass: 'PFdR'
                            eventID: 'Info'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFPFOpenCommand *)PFOpen {
    return [PFPFOpenCommand commandWithAppData: AS_appData
                         eventClass: 'PFdR'
                            eventID: 'odoC'
                    directParameter: nil
                    parentReference: self];
}

- (PFPFOpenCommand *)PFOpen:(id)directParameter {
    return [PFPFOpenCommand commandWithAppData: AS_appData
                         eventClass: 'PFdR'
                            eventID: 'odoC'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFActivateCommand *)activate {
    return [PFActivateCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'actv'
                    directParameter: nil
                    parentReference: self];
}

- (PFActivateCommand *)activate:(id)directParameter {
    return [PFActivateCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'actv'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFAddToFavoritesCommand *)addToFavorites {
    return [PFAddToFavoritesCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'ffav'
                    directParameter: nil
                    parentReference: self];
}

- (PFAddToFavoritesCommand *)addToFavorites:(id)directParameter {
    return [PFAddToFavoritesCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'ffav'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFCloseCommand *)close {
    return [PFCloseCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clos'
                    directParameter: nil
                    parentReference: self];
}

- (PFCloseCommand *)close:(id)directParameter {
    return [PFCloseCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clos'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFCountCommand *)count {
    return [PFCountCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'cnte'
                    directParameter: nil
                    parentReference: self];
}

- (PFCountCommand *)count:(id)directParameter {
    return [PFCountCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'cnte'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFDeleteCommand *)delete {
    return [PFDeleteCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'delo'
                    directParameter: nil
                    parentReference: self];
}

- (PFDeleteCommand *)delete:(id)directParameter {
    return [PFDeleteCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'delo'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFDuplicateCommand *)duplicate {
    return [PFDuplicateCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clon'
                    directParameter: nil
                    parentReference: self];
}

- (PFDuplicateCommand *)duplicate:(id)directParameter {
    return [PFDuplicateCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clon'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFEjectCommand *)eject {
    return [PFEjectCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'ejct'
                    directParameter: nil
                    parentReference: self];
}

- (PFEjectCommand *)eject:(id)directParameter {
    return [PFEjectCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'ejct'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFEmptyCommand *)empty {
    return [PFEmptyCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'empt'
                    directParameter: nil
                    parentReference: self];
}

- (PFEmptyCommand *)empty:(id)directParameter {
    return [PFEmptyCommand commandWithAppData: AS_appData
                         eventClass: 'fndr'
                            eventID: 'empt'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFExistsCommand *)exists {
    return [PFExistsCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'doex'
                    directParameter: nil
                    parentReference: self];
}

- (PFExistsCommand *)exists:(id)directParameter {
    return [PFExistsCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'doex'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFGetCommand *)get {
    return [PFGetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'getd'
                    directParameter: nil
                    parentReference: self];
}

- (PFGetCommand *)get:(id)directParameter {
    return [PFGetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'getd'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFGetURLCommand *)getURL {
    return [PFGetURLCommand commandWithAppData: AS_appData
                         eventClass: 'GURL'
                            eventID: 'GURL'
                    directParameter: nil
                    parentReference: self];
}

- (PFGetURLCommand *)getURL:(id)directParameter {
    return [PFGetURLCommand commandWithAppData: AS_appData
                         eventClass: 'GURL'
                            eventID: 'GURL'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFLaunchCommand *)launch {
    return [PFLaunchCommand commandWithAppData: AS_appData
                         eventClass: 'ascr'
                            eventID: 'noop'
                    directParameter: nil
                    parentReference: self];
}

- (PFLaunchCommand *)launch:(id)directParameter {
    return [PFLaunchCommand commandWithAppData: AS_appData
                         eventClass: 'ascr'
                            eventID: 'noop'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFMakeCommand *)make {
    return [PFMakeCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'crel'
                    directParameter: nil
                    parentReference: self];
}

- (PFMakeCommand *)make:(id)directParameter {
    return [PFMakeCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'crel'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFMoveCommand *)move {
    return [PFMoveCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'move'
                    directParameter: nil
                    parentReference: self];
}

- (PFMoveCommand *)move:(id)directParameter {
    return [PFMoveCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'move'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFOpenCommand *)open {
    return [PFOpenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'odoc'
                    directParameter: nil
                    parentReference: self];
}

- (PFOpenCommand *)open:(id)directParameter {
    return [PFOpenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'odoc'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFOpenLocationCommand *)openLocation {
    return [PFOpenLocationCommand commandWithAppData: AS_appData
                         eventClass: 'GURL'
                            eventID: 'GURL'
                    directParameter: nil
                    parentReference: self];
}

- (PFOpenLocationCommand *)openLocation:(id)directParameter {
    return [PFOpenLocationCommand commandWithAppData: AS_appData
                         eventClass: 'GURL'
                            eventID: 'GURL'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFPrintCommand *)print {
    return [PFPrintCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'pdoc'
                    directParameter: nil
                    parentReference: self];
}

- (PFPrintCommand *)print:(id)directParameter {
    return [PFPrintCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'pdoc'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFQuitCommand *)quit {
    return [PFQuitCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'quit'
                    directParameter: nil
                    parentReference: self];
}

- (PFQuitCommand *)quit:(id)directParameter {
    return [PFQuitCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'quit'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFReopenCommand *)reopen {
    return [PFReopenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'rapp'
                    directParameter: nil
                    parentReference: self];
}

- (PFReopenCommand *)reopen:(id)directParameter {
    return [PFReopenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'rapp'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFRevealCommand *)reveal {
    return [PFRevealCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'mvis'
                    directParameter: nil
                    parentReference: self];
}

- (PFRevealCommand *)reveal:(id)directParameter {
    return [PFRevealCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'mvis'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFRunCommand *)run {
    return [PFRunCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'oapp'
                    directParameter: nil
                    parentReference: self];
}

- (PFRunCommand *)run:(id)directParameter {
    return [PFRunCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'oapp'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFSaveCommand *)save {
    return [PFSaveCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'save'
                    directParameter: nil
                    parentReference: self];
}

- (PFSaveCommand *)save:(id)directParameter {
    return [PFSaveCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'save'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFSelectCommand *)select {
    return [PFSelectCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'slct'
                    directParameter: nil
                    parentReference: self];
}

- (PFSelectCommand *)select:(id)directParameter {
    return [PFSelectCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'slct'
                    directParameter: directParameter
                    parentReference: self];
}

- (PFSetCommand *)set {
    return [PFSetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'setd'
                    directParameter: nil
                    parentReference: self];
}

- (PFSetCommand *)set:(id)directParameter {
    return [PFSetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'setd'
                    directParameter: directParameter
                    parentReference: self];
}


/* Elements */

- (PFReference *)applications {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'capp']];
}

- (PFReference *)attachments {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'atts']];
}

- (PFReference *)attributeRuns {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'catr']];
}

- (PFReference *)characters {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cha ']];
}

- (PFReference *)containers {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'ctnR']];
}

- (PFReference *)disks {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cdiS']];
}

- (PFReference *)documents {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'docu']];
}

- (PFReference *)finderWindows {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'fwiD']];
}

- (PFReference *)fsFiles {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cfiL']];
}

- (PFReference *)fsFolders {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cfoL']];
}

- (PFReference *)fsItems {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'fsIM']];
}

- (PFReference *)infoWindows {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'panl']];
}

- (PFReference *)items {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cobj']];
}

- (PFReference *)paragraphs {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cpar']];
}

- (PFReference *)printSettings {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'pset']];
}

- (PFReference *)richText {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'ctxt']];
}

- (PFReference *)windows {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cwin']];
}

- (PFReference *)words {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cwor']];
}


/* Properties */

- (PFReference *)POSIXPath {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pthP']];
}

- (PFReference *)URL {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pURL']];
}

- (PFReference *)bounds {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pbnd']];
}

- (PFReference *)capacity {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'dcaP']];
}

- (PFReference *)class_ {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pcls']];
}

- (PFReference *)closeable {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'hclb']];
}

- (PFReference *)collating {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwcl']];
}

- (PFReference *)color {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'colr']];
}

- (PFReference *)container {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ctnR']];
}

- (PFReference *)copies {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwcp']];
}

- (PFReference *)creationDate {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'cdtE']];
}

- (PFReference *)creatorType {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'creT']];
}

- (PFReference *)currentView {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'cviW']];
}

- (PFReference *)desktop {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'desK']];
}

- (PFReference *)disk {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'disK']];
}

- (PFReference *)displayedName {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'dnaM']];
}

- (PFReference *)document {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'docu']];
}

- (PFReference *)ejectable {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'dejC']];
}

- (PFReference *)endingPage {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwlp']];
}

- (PFReference *)errorHandling {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lweh']];
}

- (PFReference *)everyonesPrivileges {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'othP']];
}

- (PFReference *)extensionHidden {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'extH']];
}

- (PFReference *)faxNumber {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'faxn']];
}

- (PFReference *)file {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'file']];
}

- (PFReference *)fileType {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'typE']];
}

- (PFReference *)font {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'font']];
}

- (PFReference *)freeSpace {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'dfrE']];
}

- (PFReference *)frontmost {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pisf']];
}

- (PFReference *)group {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'groP']];
}

- (PFReference *)groupPrivileges {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'grpP']];
}

- (PFReference *)home {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'homE']];
}

- (PFReference *)id_ {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ID  ']];
}

- (PFReference *)index {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pidx']];
}

- (PFReference *)informationWindow {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'iwnd']];
}

- (PFReference *)item {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'iteM']];
}

- (PFReference *)kind {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'kinD']];
}

- (PFReference *)labelIndex {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'labL']];
}

- (PFReference *)localVolume {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'dloC']];
}

- (PFReference *)locked {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'locK']];
}

- (PFReference *)minimizable {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ismn']];
}

- (PFReference *)minimized {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pmnd']];
}

- (PFReference *)modificationDate {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'mdtE']];
}

- (PFReference *)modified {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'imod']];
}

- (PFReference *)name {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pnam']];
}

- (PFReference *)nameExtension {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'extN']];
}

- (PFReference *)owner {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ownR']];
}

- (PFReference *)ownerPrivileges {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ownP']];
}

- (PFReference *)pagesAcross {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwla']];
}

- (PFReference *)pagesDown {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwld']];
}

- (PFReference *)path {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pthH']];
}

- (PFReference *)physicalSize {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'psiZ']];
}

- (PFReference *)properties {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pALL']];
}

- (PFReference *)resizable {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'prsz']];
}

- (PFReference *)selection {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'slcT']];
}

- (PFReference *)size {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ptsz']];
}

- (PFReference *)startingPage {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwfp']];
}

- (PFReference *)startup {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'dboT']];
}

- (PFReference *)startupDisk {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'srtD']];
}

- (PFReference *)target {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'tarG']];
}

- (PFReference *)targetPrinter {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'trpr']];
}

- (PFReference *)trash {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'trsh']];
}

- (PFReference *)version_ {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'vers']];
}

- (PFReference *)visible {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pvis']];
}

- (PFReference *)zoomable {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'iszm']];
}

- (PFReference *)zoomed {
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pzum']];
}


/***********************************/

// ordinal selectors

- (PFReference *)first {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference first]];
}

- (PFReference *)middle {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference middle]];
}

- (PFReference *)last {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference last]];
}

- (PFReference *)any {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference any]];
}

// by-index, by-name, by-id selectors
 
- (PFReference *)at:(long)index {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference at: index]];
}

- (PFReference *)byIndex:(id)index { // index is normally NSNumber, but may occasionally be other types
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byIndex: index]];
}

- (PFReference *)byName:(NSString *)name {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byName: name]];
}

- (PFReference *)byID:(id)id_ {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byID: id_]];
}

// by-relative-position selectors

- (PFReference *)previous:(ASConstant *)class_ {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference previous: [class_ AS_code]]];
}

- (PFReference *)next:(ASConstant *)class_ {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference next: [class_ AS_code]]];
}

// by-range selector

- (PFReference *)at:(long)fromIndex to:(long)toIndex {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference at: fromIndex to: toIndex]];
}

- (PFReference *)byRange:(id)fromObject to:(id)toObject {
    // takes two con-based references, with other values being expanded as necessary
    if ([fromObject isKindOfClass: [PFReference class]])
        fromObject = [fromObject AS_aemReference];
    if ([toObject isKindOfClass: [PFReference class]])
        toObject = [toObject AS_aemReference];
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byRange: fromObject to: toObject]];
}

// by-test selector

- (PFReference *)byTest:(PFReference *)testReference {
    // note: getting AS_aemReference won't work for ASDynamicReference
    return [PFReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference byTest: [testReference AS_aemReference]]];
}

// insertion location selectors

- (PFReference *)start {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference start]];
}

- (PFReference *)end {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference end]];
}

- (PFReference *)before {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference before]];
}

- (PFReference *)after {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference after]];
}

// Comparison and logic tests

- (PFReference *)greaterThan:(id)object {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference greaterThan: object]];
}

- (PFReference *)greaterOrEquals:(id)object {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference greaterOrEquals: object]];
}

- (PFReference *)equals:(id)object {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference equals: object]];
}

- (PFReference *)notEquals:(id)object {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference notEquals: object]];
}

- (PFReference *)lessThan:(id)object {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference lessThan: object]];
}

- (PFReference *)lessOrEquals:(id)object {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference lessOrEquals: object]];
}

- (PFReference *)startsWith:(id)object {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference startsWith: object]];
}

- (PFReference *)endsWith:(id)object {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference endsWith: object]];
}

- (PFReference *)contains:(id)object {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference contains: object]];
}

- (PFReference *)isIn:(id)object {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference isIn: object]];
}

- (PFReference *)AND:(id)remainingOperands {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference AND: remainingOperands]];
}

- (PFReference *)OR:(id)remainingOperands {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference OR: remainingOperands]];
}

- (PFReference *)NOT {
    return [PFReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference NOT]];
}

@end


