/*
 * ITRMReferenceGlue.m
 *
 * /Volumes/iTerm/iTerm.app
 * 2007-02-18 21:09:47 (CST)
 *
 */

#import "ITRMReferenceGlue.h"

@implementation ITRMReference

- (NSString *)description {
	return [ITRMReferenceRenderer render: AS_aemReference];
}

/* Commands */

- (ITRMActivateCommand *)activate {
    return [ITRMActivateCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'actv'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMActivateCommand *)activate:(id)directParameter {
    return [ITRMActivateCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'actv'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMCloseCommand *)close {
    return [ITRMCloseCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clos'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMCloseCommand *)close:(id)directParameter {
    return [ITRMCloseCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clos'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMCountCommand *)count {
    return [ITRMCountCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'cnte'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMCountCommand *)count:(id)directParameter {
    return [ITRMCountCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'cnte'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMDeleteCommand *)delete {
    return [ITRMDeleteCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'delo'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMDeleteCommand *)delete:(id)directParameter {
    return [ITRMDeleteCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'delo'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMDuplicateCommand *)duplicate {
    return [ITRMDuplicateCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clon'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMDuplicateCommand *)duplicate:(id)directParameter {
    return [ITRMDuplicateCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clon'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMExecCommand *)exec {
    return [ITRMExecCommand commandWithAppData: AS_appData
                         eventClass: 'ITRM'
                            eventID: 'Exec'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMExecCommand *)exec:(id)directParameter {
    return [ITRMExecCommand commandWithAppData: AS_appData
                         eventClass: 'ITRM'
                            eventID: 'Exec'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMExistsCommand *)exists {
    return [ITRMExistsCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'doex'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMExistsCommand *)exists:(id)directParameter {
    return [ITRMExistsCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'doex'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMGetCommand *)get {
    return [ITRMGetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'getd'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMGetCommand *)get:(id)directParameter {
    return [ITRMGetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'getd'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMLaunchCommand *)launch {
    return [ITRMLaunchCommand commandWithAppData: AS_appData
                         eventClass: 'ascr'
                            eventID: 'noop'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMLaunchCommand *)launch:(id)directParameter {
    return [ITRMLaunchCommand commandWithAppData: AS_appData
                         eventClass: 'ascr'
                            eventID: 'noop'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMLaunch_Command *)launch_ {
    return [ITRMLaunch_Command commandWithAppData: AS_appData
                         eventClass: 'ITRM'
                            eventID: 'LNCH'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMLaunch_Command *)launch_:(id)directParameter {
    return [ITRMLaunch_Command commandWithAppData: AS_appData
                         eventClass: 'ITRM'
                            eventID: 'LNCH'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMMakeCommand *)make {
    return [ITRMMakeCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'crel'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMMakeCommand *)make:(id)directParameter {
    return [ITRMMakeCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'crel'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMMoveCommand *)move {
    return [ITRMMoveCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'move'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMMoveCommand *)move:(id)directParameter {
    return [ITRMMoveCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'move'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMOpenCommand *)open {
    return [ITRMOpenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'odoc'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMOpenCommand *)open:(id)directParameter {
    return [ITRMOpenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'odoc'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMOpenLocationCommand *)openLocation {
    return [ITRMOpenLocationCommand commandWithAppData: AS_appData
                         eventClass: 'GURL'
                            eventID: 'GURL'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMOpenLocationCommand *)openLocation:(id)directParameter {
    return [ITRMOpenLocationCommand commandWithAppData: AS_appData
                         eventClass: 'GURL'
                            eventID: 'GURL'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMPrintCommand *)print {
    return [ITRMPrintCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'pdoc'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMPrintCommand *)print:(id)directParameter {
    return [ITRMPrintCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'pdoc'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMQuitCommand *)quit {
    return [ITRMQuitCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'quit'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMQuitCommand *)quit:(id)directParameter {
    return [ITRMQuitCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'quit'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMReopenCommand *)reopen {
    return [ITRMReopenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'rapp'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMReopenCommand *)reopen:(id)directParameter {
    return [ITRMReopenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'rapp'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMRunCommand *)run {
    return [ITRMRunCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'oapp'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMRunCommand *)run:(id)directParameter {
    return [ITRMRunCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'oapp'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMSaveCommand *)save {
    return [ITRMSaveCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'save'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMSaveCommand *)save:(id)directParameter {
    return [ITRMSaveCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'save'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMSelectCommand *)select {
    return [ITRMSelectCommand commandWithAppData: AS_appData
                         eventClass: 'ITRM'
                            eventID: 'Slct'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMSelectCommand *)select:(id)directParameter {
    return [ITRMSelectCommand commandWithAppData: AS_appData
                         eventClass: 'ITRM'
                            eventID: 'Slct'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMSetCommand *)set {
    return [ITRMSetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'setd'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMSetCommand *)set:(id)directParameter {
    return [ITRMSetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'setd'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMTerminateCommand *)terminate {
    return [ITRMTerminateCommand commandWithAppData: AS_appData
                         eventClass: 'ITRM'
                            eventID: 'Strm'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMTerminateCommand *)terminate:(id)directParameter {
    return [ITRMTerminateCommand commandWithAppData: AS_appData
                         eventClass: 'ITRM'
                            eventID: 'Strm'
                    directParameter: directParameter
                    parentReference: self];
}

- (ITRMWriteCommand *)write {
    return [ITRMWriteCommand commandWithAppData: AS_appData
                         eventClass: 'ITRM'
                            eventID: 'Wrte'
                    directParameter: nil
                    parentReference: self];
}

- (ITRMWriteCommand *)write:(id)directParameter {
    return [ITRMWriteCommand commandWithAppData: AS_appData
                         eventClass: 'ITRM'
                            eventID: 'Wrte'
                    directParameter: directParameter
                    parentReference: self];
}


/* Elements */

- (ITRMReference *)applications {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'capp']];
}

- (ITRMReference *)attachment {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'atts']];
}

- (ITRMReference *)attributeRuns {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'catr']];
}

- (ITRMReference *)characters {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cha ']];
}

- (ITRMReference *)colors {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'colr']];
}

- (ITRMReference *)documents {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'docu']];
}

- (ITRMReference *)iTermApplications {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'capp']];
}

- (ITRMReference *)items {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cobj']];
}

- (ITRMReference *)paragraphs {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cpar']];
}

- (ITRMReference *)printSettings {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'pset']];
}

- (ITRMReference *)sessions {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'Pssn']];
}

- (ITRMReference *)terminals {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'Ptrm']];
}

- (ITRMReference *)text {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'ctxt']];
}

- (ITRMReference *)windows {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cwin']];
}

- (ITRMReference *)words {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cwor']];
}


/* Properties */

- (ITRMReference *)antiAlias {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'Aals']];
}

- (ITRMReference *)backgroundColor {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'Bcol']];
}

- (ITRMReference *)backgroundImagePath {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'BImg']];
}

- (ITRMReference *)boldColor {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'bCol']];
}

- (ITRMReference *)bounds {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pbnd']];
}

- (ITRMReference *)class_ {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pcls']];
}

- (ITRMReference *)closeable {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'hclb']];
}

- (ITRMReference *)collating {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwcl']];
}

- (ITRMReference *)color {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'colr']];
}

- (ITRMReference *)contents {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ctxt']];
}

- (ITRMReference *)copies {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwcp']];
}

- (ITRMReference *)currentSession {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'Cssn']];
}

- (ITRMReference *)currentTerminal {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'Ctrm']];
}

- (ITRMReference *)cursorColor {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'Ccol']];
}

- (ITRMReference *)cursor_textColor {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'Ctxt']];
}

- (ITRMReference *)document {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'docu']];
}

- (ITRMReference *)endingPage {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwlp']];
}

- (ITRMReference *)errorHandling {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lweh']];
}

- (ITRMReference *)faxNumber {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'faxn']];
}

- (ITRMReference *)fileName {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'atfn']];
}

- (ITRMReference *)floating {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'isfl']];
}

- (ITRMReference *)font {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'font']];
}

- (ITRMReference *)foregroundColor {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'Fcol']];
}

- (ITRMReference *)frontmost {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pisf']];
}

- (ITRMReference *)id_ {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ID  ']];
}

- (ITRMReference *)index {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pidx']];
}

- (ITRMReference *)miniaturizable {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ismn']];
}

- (ITRMReference *)miniaturized {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pmnd']];
}

- (ITRMReference *)modal {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pmod']];
}

- (ITRMReference *)modified {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'imod']];
}

- (ITRMReference *)name {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pnam']];
}

- (ITRMReference *)number {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'Snum']];
}

- (ITRMReference *)numberOfColumns {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'Cols']];
}

- (ITRMReference *)numberOfRows {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'Rows']];
}

- (ITRMReference *)pagesAcross {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwla']];
}

- (ITRMReference *)pagesDown {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwld']];
}

- (ITRMReference *)path {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ppth']];
}

- (ITRMReference *)properties {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pALL']];
}

- (ITRMReference *)resizable {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'prsz']];
}

- (ITRMReference *)selectionColor {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'Scol']];
}

- (ITRMReference *)size {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ptsz']];
}

- (ITRMReference *)startingPage {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwfp']];
}

- (ITRMReference *)targetPrinter {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'trpr']];
}

- (ITRMReference *)titled {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ptit']];
}

- (ITRMReference *)transparency {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'Tran']];
}

- (ITRMReference *)tty {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'Stty']];
}

- (ITRMReference *)version_ {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'vers']];
}

- (ITRMReference *)visible {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pvis']];
}

- (ITRMReference *)zoomable {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'iszm']];
}

- (ITRMReference *)zoomed {
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pzum']];
}


/***********************************/

// ordinal selectors

- (ITRMReference *)first {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference first]];
}

- (ITRMReference *)middle {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference middle]];
}

- (ITRMReference *)last {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference last]];
}

- (ITRMReference *)any {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference any]];
}

// by-index, by-name, by-id selectors
 
- (ITRMReference *)at:(long)index {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference at: index]];
}

- (ITRMReference *)byIndex:(id)index { // index is normally NSNumber, but may occasionally be other types
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byIndex: index]];
}

- (ITRMReference *)byName:(NSString *)name {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byName: name]];
}

- (ITRMReference *)byID:(id)id_ {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byID: id_]];
}

// by-relative-position selectors

- (ITRMReference *)previous:(ASConstant *)class_ {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference previous: [class_ AS_code]]];
}

- (ITRMReference *)next:(ASConstant *)class_ {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference next: [class_ AS_code]]];
}

// by-range selector

- (ITRMReference *)at:(long)fromIndex to:(long)toIndex {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference at: fromIndex to: toIndex]];
}

- (ITRMReference *)byRange:(id)fromObject to:(id)toObject {
    // takes two con-based references, with other values being expanded as necessary
    if ([fromObject isKindOfClass: [ITRMReference class]])
        fromObject = [fromObject AS_aemReference];
    if ([toObject isKindOfClass: [ITRMReference class]])
        toObject = [toObject AS_aemReference];
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byRange: fromObject to: toObject]];
}

// by-test selector

- (ITRMReference *)byTest:(ITRMReference *)testReference {
    // note: getting AS_aemReference won't work for ASDynamicReference
    return [ITRMReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference byTest: [testReference AS_aemReference]]];
}

// insertion location selectors

- (ITRMReference *)start {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference start]];
}

- (ITRMReference *)end {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference end]];
}

- (ITRMReference *)before {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference before]];
}

- (ITRMReference *)after {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference after]];
}

// Comparison and logic tests

- (ITRMReference *)greaterThan:(id)object {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference greaterThan: object]];
}

- (ITRMReference *)greaterOrEquals:(id)object {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference greaterOrEquals: object]];
}

- (ITRMReference *)equals:(id)object {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference equals: object]];
}

- (ITRMReference *)notEquals:(id)object {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference notEquals: object]];
}

- (ITRMReference *)lessThan:(id)object {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference lessThan: object]];
}

- (ITRMReference *)lessOrEquals:(id)object {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference lessOrEquals: object]];
}

- (ITRMReference *)startsWith:(id)object {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference startsWith: object]];
}

- (ITRMReference *)endsWith:(id)object {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference endsWith: object]];
}

- (ITRMReference *)contains:(id)object {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference contains: object]];
}

- (ITRMReference *)isIn:(id)object {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference isIn: object]];
}

- (ITRMReference *)AND:(id)remainingOperands {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference AND: remainingOperands]];
}

- (ITRMReference *)OR:(id)remainingOperands {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference OR: remainingOperands]];
}

- (ITRMReference *)NOT {
    return [ITRMReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference NOT]];
}

@end


