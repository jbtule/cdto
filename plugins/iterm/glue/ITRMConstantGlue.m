/*
 * ITRMConstantGlue.m
 *
 * /Volumes/iTerm/iTerm.app
 * 2007-02-18 21:09:47 (CST)
 *
 */

#import "ITRMConstantGlue.h"

@implementation ITRMConstant

+ (id)constantWithCode:(OSType)code_ {
    switch (code_) {
        case 'Aals': return [self antiAlias];
        case 'ask ': return [self ask];
        case 'atts': return [self attachment];
        case 'catr': return [self attributeRun];
        case 'Bcol': return [self backgroundColor];
        case 'BImg': return [self backgroundImagePath];
        case 'bCol': return [self boldColor];
        case 'pbnd': return [self bounds];
        case 'cha ': return [self character];
        case 'pcls': return [self class_];
        case 'hclb': return [self closeable];
        case 'lwcl': return [self collating];
        case 'colr': return [self color];
        case 'lwcp': return [self copies];
        case 'Cssn': return [self currentSession];
        case 'Ctrm': return [self currentTerminal];
        case 'Ccol': return [self cursorColor];
        case 'Ctxt': return [self cursor_textColor];
        case 'lwdt': return [self detailed];
        case 'docu': return [self document];
        case 'lwlp': return [self endingPage];
        case 'lweh': return [self errorHandling];
        case 'faxn': return [self faxNumber];
        case 'atfn': return [self fileName];
        case 'isfl': return [self floating];
        case 'font': return [self font];
        case 'Fcol': return [self foregroundColor];
        case 'pisf': return [self frontmost];
        case 'capp': return [self iTermApplication];
        case 'ID  ': return [self id_];
        case 'pidx': return [self index];
        case 'cobj': return [self item];
        case 'ismn': return [self miniaturizable];
        case 'pmnd': return [self miniaturized];
        case 'pmod': return [self modal];
        case 'imod': return [self modified];
        case 'pnam': return [self name];
        case 'no  ': return [self no];
        case 'Snum': return [self number];
        case 'Cols': return [self numberOfColumns];
        case 'Rows': return [self numberOfRows];
        case 'lwla': return [self pagesAcross];
        case 'lwld': return [self pagesDown];
        case 'cpar': return [self paragraph];
        case 'ppth': return [self path];
        case 'pset': return [self printSettings];
        case 'pALL': return [self properties];
        case 'prsz': return [self resizable];
        case 'Scol': return [self selectionColor];
        case 'Pssn': return [self session];
        case 'ptsz': return [self size];
        case 'lwst': return [self standard];
        case 'lwfp': return [self startingPage];
        case 'trpr': return [self targetPrinter];
        case 'Ptrm': return [self terminal];
        case 'ctxt': return [self text];
        case 'ptit': return [self titled];
        case 'Tran': return [self transparency];
        case 'Stty': return [self tty];
        case 'vers': return [self version_];
        case 'pvis': return [self visible];
        case 'cwin': return [self window];
        case 'cwor': return [self word];
        case 'yes ': return [self yes];
        case 'iszm': return [self zoomable];
        case 'pzum': return [self zoomed];
        default: return [[self superclass] constantWithCode: code_];
    }
}


/* Enumerators */

+ (ITRMConstant *)ask {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"ask" type: typeEnumerated code: 'ask '];
    return constantObj;
}

+ (ITRMConstant *)detailed {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"detailed" type: typeEnumerated code: 'lwdt'];
    return constantObj;
}

+ (ITRMConstant *)no {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"no" type: typeEnumerated code: 'no  '];
    return constantObj;
}

+ (ITRMConstant *)standard {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"standard" type: typeEnumerated code: 'lwst'];
    return constantObj;
}

+ (ITRMConstant *)yes {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"yes" type: typeEnumerated code: 'yes '];
    return constantObj;
}


/* Types and properties */

+ (ITRMConstant *)antiAlias {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"antiAlias" type: typeType code: 'Aals'];
    return constantObj;
}

+ (ITRMConstant *)application {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"application" type: typeType code: 'capp'];
    return constantObj;
}

+ (ITRMConstant *)attachment {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"attachment" type: typeType code: 'atts'];
    return constantObj;
}

+ (ITRMConstant *)attributeRun {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"attributeRun" type: typeType code: 'catr'];
    return constantObj;
}

+ (ITRMConstant *)backgroundColor {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"backgroundColor" type: typeType code: 'Bcol'];
    return constantObj;
}

+ (ITRMConstant *)backgroundImagePath {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"backgroundImagePath" type: typeType code: 'BImg'];
    return constantObj;
}

+ (ITRMConstant *)boldColor {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"boldColor" type: typeType code: 'bCol'];
    return constantObj;
}

+ (ITRMConstant *)bounds {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"bounds" type: typeType code: 'pbnd'];
    return constantObj;
}

+ (ITRMConstant *)character {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"character" type: typeType code: 'cha '];
    return constantObj;
}

+ (ITRMConstant *)class_ {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"class_" type: typeType code: 'pcls'];
    return constantObj;
}

+ (ITRMConstant *)closeable {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"closeable" type: typeType code: 'hclb'];
    return constantObj;
}

+ (ITRMConstant *)collating {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"collating" type: typeType code: 'lwcl'];
    return constantObj;
}

+ (ITRMConstant *)color {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"color" type: typeType code: 'colr'];
    return constantObj;
}

+ (ITRMConstant *)contents {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"contents" type: typeType code: 'ctxt'];
    return constantObj;
}

+ (ITRMConstant *)copies {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"copies" type: typeType code: 'lwcp'];
    return constantObj;
}

+ (ITRMConstant *)currentSession {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"currentSession" type: typeType code: 'Cssn'];
    return constantObj;
}

+ (ITRMConstant *)currentTerminal {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"currentTerminal" type: typeType code: 'Ctrm'];
    return constantObj;
}

+ (ITRMConstant *)cursorColor {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"cursorColor" type: typeType code: 'Ccol'];
    return constantObj;
}

+ (ITRMConstant *)cursor_textColor {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"cursor_textColor" type: typeType code: 'Ctxt'];
    return constantObj;
}

+ (ITRMConstant *)document {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"document" type: typeType code: 'docu'];
    return constantObj;
}

+ (ITRMConstant *)endingPage {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"endingPage" type: typeType code: 'lwlp'];
    return constantObj;
}

+ (ITRMConstant *)errorHandling {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"errorHandling" type: typeType code: 'lweh'];
    return constantObj;
}

+ (ITRMConstant *)faxNumber {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"faxNumber" type: typeType code: 'faxn'];
    return constantObj;
}

+ (ITRMConstant *)fileName {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"fileName" type: typeType code: 'atfn'];
    return constantObj;
}

+ (ITRMConstant *)floating {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"floating" type: typeType code: 'isfl'];
    return constantObj;
}

+ (ITRMConstant *)font {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"font" type: typeType code: 'font'];
    return constantObj;
}

+ (ITRMConstant *)foregroundColor {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"foregroundColor" type: typeType code: 'Fcol'];
    return constantObj;
}

+ (ITRMConstant *)frontmost {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"frontmost" type: typeType code: 'pisf'];
    return constantObj;
}

+ (ITRMConstant *)iTermApplication {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"iTermApplication" type: typeType code: 'capp'];
    return constantObj;
}

+ (ITRMConstant *)id_ {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"id_" type: typeType code: 'ID  '];
    return constantObj;
}

+ (ITRMConstant *)index {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"index" type: typeType code: 'pidx'];
    return constantObj;
}

+ (ITRMConstant *)item {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"item" type: typeType code: 'cobj'];
    return constantObj;
}

+ (ITRMConstant *)miniaturizable {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"miniaturizable" type: typeType code: 'ismn'];
    return constantObj;
}

+ (ITRMConstant *)miniaturized {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"miniaturized" type: typeType code: 'pmnd'];
    return constantObj;
}

+ (ITRMConstant *)modal {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"modal" type: typeType code: 'pmod'];
    return constantObj;
}

+ (ITRMConstant *)modified {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"modified" type: typeType code: 'imod'];
    return constantObj;
}

+ (ITRMConstant *)name {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"name" type: typeType code: 'pnam'];
    return constantObj;
}

+ (ITRMConstant *)number {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"number" type: typeType code: 'Snum'];
    return constantObj;
}

+ (ITRMConstant *)numberOfColumns {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"numberOfColumns" type: typeType code: 'Cols'];
    return constantObj;
}

+ (ITRMConstant *)numberOfRows {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"numberOfRows" type: typeType code: 'Rows'];
    return constantObj;
}

+ (ITRMConstant *)pagesAcross {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"pagesAcross" type: typeType code: 'lwla'];
    return constantObj;
}

+ (ITRMConstant *)pagesDown {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"pagesDown" type: typeType code: 'lwld'];
    return constantObj;
}

+ (ITRMConstant *)paragraph {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"paragraph" type: typeType code: 'cpar'];
    return constantObj;
}

+ (ITRMConstant *)path {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"path" type: typeType code: 'ppth'];
    return constantObj;
}

+ (ITRMConstant *)printSettings {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"printSettings" type: typeType code: 'pset'];
    return constantObj;
}

+ (ITRMConstant *)properties {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"properties" type: typeType code: 'pALL'];
    return constantObj;
}

+ (ITRMConstant *)resizable {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"resizable" type: typeType code: 'prsz'];
    return constantObj;
}

+ (ITRMConstant *)selectionColor {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"selectionColor" type: typeType code: 'Scol'];
    return constantObj;
}

+ (ITRMConstant *)session {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"session" type: typeType code: 'Pssn'];
    return constantObj;
}

+ (ITRMConstant *)size {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"size" type: typeType code: 'ptsz'];
    return constantObj;
}

+ (ITRMConstant *)startingPage {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"startingPage" type: typeType code: 'lwfp'];
    return constantObj;
}

+ (ITRMConstant *)targetPrinter {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"targetPrinter" type: typeType code: 'trpr'];
    return constantObj;
}

+ (ITRMConstant *)terminal {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"terminal" type: typeType code: 'Ptrm'];
    return constantObj;
}

+ (ITRMConstant *)text {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"text" type: typeType code: 'ctxt'];
    return constantObj;
}

+ (ITRMConstant *)titled {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"titled" type: typeType code: 'ptit'];
    return constantObj;
}

+ (ITRMConstant *)transparency {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"transparency" type: typeType code: 'Tran'];
    return constantObj;
}

+ (ITRMConstant *)tty {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"tty" type: typeType code: 'Stty'];
    return constantObj;
}

+ (ITRMConstant *)version_ {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"version_" type: typeType code: 'vers'];
    return constantObj;
}

+ (ITRMConstant *)visible {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"visible" type: typeType code: 'pvis'];
    return constantObj;
}

+ (ITRMConstant *)window {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"window" type: typeType code: 'cwin'];
    return constantObj;
}

+ (ITRMConstant *)word {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"word" type: typeType code: 'cwor'];
    return constantObj;
}

+ (ITRMConstant *)zoomable {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"zoomable" type: typeType code: 'iszm'];
    return constantObj;
}

+ (ITRMConstant *)zoomed {
    static ITRMConstant *constantObj;
    if (!constantObj)
        constantObj = [ITRMConstant constantWithName: @"zoomed" type: typeType code: 'pzum'];
    return constantObj;
}

@end


