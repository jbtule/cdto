/*
 * TMLReferenceGlue.m
 *
 * /Applications/Utilities/Terminal.app
 * 2007-02-16 20:26:03 (CST)
 *
 */

#import "TMLReferenceGlue.h"

@implementation TMLReference

- (NSString *)description {
	return [TMLReferenceRenderer render: AS_aemReference];
}

/* Commands */

- (TMLGetURLCommand *)GetURL {
    return [TMLGetURLCommand commandWithAppData: AS_appData
                         eventClass: 'GURL'
                            eventID: 'GURL'
                    directParameter: nil
                    parentReference: self];
}

- (TMLGetURLCommand *)GetURL:(id)directParameter {
    return [TMLGetURLCommand commandWithAppData: AS_appData
                         eventClass: 'GURL'
                            eventID: 'GURL'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLActivateCommand *)activate {
    return [TMLActivateCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'actv'
                    directParameter: nil
                    parentReference: self];
}

- (TMLActivateCommand *)activate:(id)directParameter {
    return [TMLActivateCommand commandWithAppData: AS_appData
                         eventClass: 'misc'
                            eventID: 'actv'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLCloseCommand *)close {
    return [TMLCloseCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clos'
                    directParameter: nil
                    parentReference: self];
}

- (TMLCloseCommand *)close:(id)directParameter {
    return [TMLCloseCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clos'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLCountCommand *)count {
    return [TMLCountCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'cnte'
                    directParameter: nil
                    parentReference: self];
}

- (TMLCountCommand *)count:(id)directParameter {
    return [TMLCountCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'cnte'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLDeleteCommand *)delete {
    return [TMLDeleteCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'delo'
                    directParameter: nil
                    parentReference: self];
}

- (TMLDeleteCommand *)delete:(id)directParameter {
    return [TMLDeleteCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'delo'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLDoScriptCommand *)doScript {
    return [TMLDoScriptCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'dosc'
                    directParameter: nil
                    parentReference: self];
}

- (TMLDoScriptCommand *)doScript:(id)directParameter {
    return [TMLDoScriptCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'dosc'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLDuplicateCommand *)duplicate {
    return [TMLDuplicateCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clon'
                    directParameter: nil
                    parentReference: self];
}

- (TMLDuplicateCommand *)duplicate:(id)directParameter {
    return [TMLDuplicateCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'clon'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLExistsCommand *)exists {
    return [TMLExistsCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'doex'
                    directParameter: nil
                    parentReference: self];
}

- (TMLExistsCommand *)exists:(id)directParameter {
    return [TMLExistsCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'doex'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLGetCommand *)get {
    return [TMLGetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'getd'
                    directParameter: nil
                    parentReference: self];
}

- (TMLGetCommand *)get:(id)directParameter {
    return [TMLGetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'getd'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLLaunchCommand *)launch {
    return [TMLLaunchCommand commandWithAppData: AS_appData
                         eventClass: 'ascr'
                            eventID: 'noop'
                    directParameter: nil
                    parentReference: self];
}

- (TMLLaunchCommand *)launch:(id)directParameter {
    return [TMLLaunchCommand commandWithAppData: AS_appData
                         eventClass: 'ascr'
                            eventID: 'noop'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLMakeCommand *)make {
    return [TMLMakeCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'crel'
                    directParameter: nil
                    parentReference: self];
}

- (TMLMakeCommand *)make:(id)directParameter {
    return [TMLMakeCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'crel'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLMoveCommand *)move {
    return [TMLMoveCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'move'
                    directParameter: nil
                    parentReference: self];
}

- (TMLMoveCommand *)move:(id)directParameter {
    return [TMLMoveCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'move'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLOpenCommand *)open {
    return [TMLOpenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'odoc'
                    directParameter: nil
                    parentReference: self];
}

- (TMLOpenCommand *)open:(id)directParameter {
    return [TMLOpenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'odoc'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLOpenLocationCommand *)openLocation {
    return [TMLOpenLocationCommand commandWithAppData: AS_appData
                         eventClass: 'GURL'
                            eventID: 'GURL'
                    directParameter: nil
                    parentReference: self];
}

- (TMLOpenLocationCommand *)openLocation:(id)directParameter {
    return [TMLOpenLocationCommand commandWithAppData: AS_appData
                         eventClass: 'GURL'
                            eventID: 'GURL'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLPrintCommand *)print {
    return [TMLPrintCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'pdoc'
                    directParameter: nil
                    parentReference: self];
}

- (TMLPrintCommand *)print:(id)directParameter {
    return [TMLPrintCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'pdoc'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLQuitCommand *)quit {
    return [TMLQuitCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'quit'
                    directParameter: nil
                    parentReference: self];
}

- (TMLQuitCommand *)quit:(id)directParameter {
    return [TMLQuitCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'quit'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLReopenCommand *)reopen {
    return [TMLReopenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'rapp'
                    directParameter: nil
                    parentReference: self];
}

- (TMLReopenCommand *)reopen:(id)directParameter {
    return [TMLReopenCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'rapp'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLRunCommand *)run {
    return [TMLRunCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'oapp'
                    directParameter: nil
                    parentReference: self];
}

- (TMLRunCommand *)run:(id)directParameter {
    return [TMLRunCommand commandWithAppData: AS_appData
                         eventClass: 'aevt'
                            eventID: 'oapp'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLSaveCommand *)save {
    return [TMLSaveCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'save'
                    directParameter: nil
                    parentReference: self];
}

- (TMLSaveCommand *)save:(id)directParameter {
    return [TMLSaveCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'save'
                    directParameter: directParameter
                    parentReference: self];
}

- (TMLSetCommand *)set {
    return [TMLSetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'setd'
                    directParameter: nil
                    parentReference: self];
}

- (TMLSetCommand *)set:(id)directParameter {
    return [TMLSetCommand commandWithAppData: AS_appData
                         eventClass: 'core'
                            eventID: 'setd'
                    directParameter: directParameter
                    parentReference: self];
}


/* Elements */

- (TMLReference *)applications {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'capp']];
}

- (TMLReference *)attachment {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'atts']];
}

- (TMLReference *)attributeRuns {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'catr']];
}

- (TMLReference *)characters {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cha ']];
}

- (TMLReference *)colors {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'colr']];
}

- (TMLReference *)documents {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'docu']];
}

- (TMLReference *)items {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cobj']];
}

- (TMLReference *)paragraphs {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cpar']];
}

- (TMLReference *)printSettings {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'pset']];
}

- (TMLReference *)text {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'ctxt']];
}

- (TMLReference *)windows {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cwin']];
}

- (TMLReference *)words {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference elements: 'cwor']];
}


/* Properties */

- (TMLReference *)backgroundColor {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pbcl']];
}

- (TMLReference *)boldTextColor {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pbtc']];
}

- (TMLReference *)bounds {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pbnd']];
}

- (TMLReference *)busy {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'busy']];
}

- (TMLReference *)class_ {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pcls']];
}

- (TMLReference *)closeable {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'hclb']];
}

- (TMLReference *)collating {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwcl']];
}

- (TMLReference *)color {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'colr']];
}

- (TMLReference *)contents {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pcnt']];
}

- (TMLReference *)copies {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwcp']];
}

- (TMLReference *)cursorColor {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pcuc']];
}

- (TMLReference *)customTitle {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'titl']];
}

- (TMLReference *)document {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'docu']];
}

- (TMLReference *)endingPage {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwlp']];
}

- (TMLReference *)errorHandling {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lweh']];
}

- (TMLReference *)faxNumber {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'faxn']];
}

- (TMLReference *)fileName {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'atfn']];
}

- (TMLReference *)floating {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'isfl']];
}

- (TMLReference *)font {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'font']];
}

- (TMLReference *)frame {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pfra']];
}

- (TMLReference *)frontmost {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pisf']];
}

- (TMLReference *)history {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'hist']];
}

- (TMLReference *)id_ {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ID  ']];
}

- (TMLReference *)index {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pidx']];
}

- (TMLReference *)miniaturizable {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ismn']];
}

- (TMLReference *)miniaturized {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pmnd']];
}

- (TMLReference *)modal {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pmod']];
}

- (TMLReference *)modified {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'imod']];
}

- (TMLReference *)name {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pnam']];
}

- (TMLReference *)normalTextColor {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ptxc']];
}

- (TMLReference *)numberOfColumns {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ccol']];
}

- (TMLReference *)numberOfRows {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'crow']];
}

- (TMLReference *)origin {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pori']];
}

- (TMLReference *)pagesAcross {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwla']];
}

- (TMLReference *)pagesDown {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwld']];
}

- (TMLReference *)path {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ppth']];
}

- (TMLReference *)position {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ppos']];
}

- (TMLReference *)processes {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'prcs']];
}

- (TMLReference *)properties {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pALL']];
}

- (TMLReference *)resizable {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'prsz']];
}

- (TMLReference *)size {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ptsz']];
}

- (TMLReference *)startingPage {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'lwfp']];
}

- (TMLReference *)targetPrinter {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'trpr']];
}

- (TMLReference *)titleDisplaysCustomTitle {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'tdct']];
}

- (TMLReference *)titleDisplaysDeviceName {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'tddn']];
}

- (TMLReference *)titleDisplaysFileName {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'tdfn']];
}

- (TMLReference *)titleDisplaysShellPath {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'tdsp']];
}

- (TMLReference *)titleDisplaysWindowSize {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'tdws']];
}

- (TMLReference *)titled {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'ptit']];
}

- (TMLReference *)version_ {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'vers']];
}

- (TMLReference *)visible {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pvis']];
}

- (TMLReference *)zoomable {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'iszm']];
}

- (TMLReference *)zoomed {
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference property: 'pzum']];
}


/***********************************/

// ordinal selectors

- (TMLReference *)first {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference first]];
}

- (TMLReference *)middle {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference middle]];
}

- (TMLReference *)last {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference last]];
}

- (TMLReference *)any {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference any]];
}

// by-index, by-name, by-id selectors
 
- (TMLReference *)at:(long)index {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference at: index]];
}

- (TMLReference *)byIndex:(id)index { // index is normally NSNumber, but may occasionally be other types
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byIndex: index]];
}

- (TMLReference *)byName:(NSString *)name {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byName: name]];
}

- (TMLReference *)byID:(id)id_ {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byID: id_]];
}

// by-relative-position selectors

- (TMLReference *)previous:(ASConstant *)class_ {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference previous: [class_ AS_code]]];
}

- (TMLReference *)next:(ASConstant *)class_ {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference next: [class_ AS_code]]];
}

// by-range selector

- (TMLReference *)at:(long)fromIndex to:(long)toIndex {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference at: fromIndex to: toIndex]];
}

- (TMLReference *)byRange:(id)fromObject to:(id)toObject {
    // takes two con-based references, with other values being expanded as necessary
    if ([fromObject isKindOfClass: [TMLReference class]])
        fromObject = [fromObject AS_aemReference];
    if ([toObject isKindOfClass: [TMLReference class]])
        toObject = [toObject AS_aemReference];
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference byRange: fromObject to: toObject]];
}

// by-test selector

- (TMLReference *)byTest:(TMLReference *)testReference {
    // note: getting AS_aemReference won't work for ASDynamicReference
    return [TMLReference referenceWithAppData: AS_appData
                    aemReference: [AS_aemReference byTest: [testReference AS_aemReference]]];
}

// insertion location selectors

- (TMLReference *)start {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference start]];
}

- (TMLReference *)end {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference end]];
}

- (TMLReference *)before {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference before]];
}

- (TMLReference *)after {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference after]];
}

// Comparison and logic tests

- (TMLReference *)greaterThan:(id)object {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference greaterThan: object]];
}

- (TMLReference *)greaterOrEquals:(id)object {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference greaterOrEquals: object]];
}

- (TMLReference *)equals:(id)object {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference equals: object]];
}

- (TMLReference *)notEquals:(id)object {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference notEquals: object]];
}

- (TMLReference *)lessThan:(id)object {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference lessThan: object]];
}

- (TMLReference *)lessOrEquals:(id)object {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference lessOrEquals: object]];
}

- (TMLReference *)startsWith:(id)object {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference startsWith: object]];
}

- (TMLReference *)endsWith:(id)object {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference endsWith: object]];
}

- (TMLReference *)contains:(id)object {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference contains: object]];
}

- (TMLReference *)isIn:(id)object {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference isIn: object]];
}

- (TMLReference *)AND:(id)remainingOperands {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference AND: remainingOperands]];
}

- (TMLReference *)OR:(id)remainingOperands {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference OR: remainingOperands]];
}

- (TMLReference *)NOT {
    return [TMLReference referenceWithAppData: AS_appData
                                 aemReference: [AS_aemReference NOT]];
}

@end


