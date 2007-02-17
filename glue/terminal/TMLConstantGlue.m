/*
 * TMLConstantGlue.m
 *
 * /Applications/Utilities/Terminal.app
 * 2007-02-16 20:26:02 (CST)
 *
 */

#import "TMLConstantGlue.h"

@implementation TMLConstant

+ (id)constantWithCode:(OSType)code_ {
    switch (code_) {
        case 'capp': return [self application];
        case 'ask ': return [self ask];
        case 'atts': return [self attachment];
        case 'catr': return [self attributeRun];
        case 'pbcl': return [self backgroundColor];
        case 'pbtc': return [self boldTextColor];
        case 'pbnd': return [self bounds];
        case 'busy': return [self busy];
        case 'cha ': return [self character];
        case 'pcls': return [self class_];
        case 'hclb': return [self closeable];
        case 'lwcl': return [self collating];
        case 'colr': return [self color];
        case 'pcnt': return [self contents];
        case 'lwcp': return [self copies];
        case 'pcuc': return [self cursorColor];
        case 'titl': return [self customTitle];
        case 'lwdt': return [self detailed];
        case 'docu': return [self document];
        case 'lwlp': return [self endingPage];
        case 'lweh': return [self errorHandling];
        case 'faxn': return [self faxNumber];
        case 'atfn': return [self fileName];
        case 'isfl': return [self floating];
        case 'font': return [self font];
        case 'pfra': return [self frame];
        case 'pisf': return [self frontmost];
        case 'hist': return [self history];
        case 'ID  ': return [self id_];
        case 'pidx': return [self index];
        case 'cobj': return [self item];
        case 'ismn': return [self miniaturizable];
        case 'pmnd': return [self miniaturized];
        case 'pmod': return [self modal];
        case 'imod': return [self modified];
        case 'pnam': return [self name];
        case 'no  ': return [self no];
        case 'ptxc': return [self normalTextColor];
        case 'ccol': return [self numberOfColumns];
        case 'crow': return [self numberOfRows];
        case 'pori': return [self origin];
        case 'lwla': return [self pagesAcross];
        case 'lwld': return [self pagesDown];
        case 'cpar': return [self paragraph];
        case 'ppth': return [self path];
        case 'ppos': return [self position];
        case 'pset': return [self printSettings];
        case 'prcs': return [self processes];
        case 'pALL': return [self properties];
        case 'prsz': return [self resizable];
        case 'psiz': return [self size];
        case 'ptsz': return [self size];
        case 'lwst': return [self standard];
        case 'lwfp': return [self startingPage];
        case 'trpr': return [self targetPrinter];
        case 'ctxt': return [self text];
        case 'tdct': return [self titleDisplaysCustomTitle];
        case 'tddn': return [self titleDisplaysDeviceName];
        case 'tdfn': return [self titleDisplaysFileName];
        case 'tdsp': return [self titleDisplaysShellPath];
        case 'tdws': return [self titleDisplaysWindowSize];
        case 'ptit': return [self titled];
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

+ (TMLConstant *)ask {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"ask" type: typeEnumerated code: 'ask '];
    return constantObj;
}

+ (TMLConstant *)detailed {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"detailed" type: typeEnumerated code: 'lwdt'];
    return constantObj;
}

+ (TMLConstant *)no {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"no" type: typeEnumerated code: 'no  '];
    return constantObj;
}

+ (TMLConstant *)standard {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"standard" type: typeEnumerated code: 'lwst'];
    return constantObj;
}

+ (TMLConstant *)yes {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"yes" type: typeEnumerated code: 'yes '];
    return constantObj;
}


/* Types and properties */

+ (TMLConstant *)application {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"application" type: typeType code: 'capp'];
    return constantObj;
}

+ (TMLConstant *)attachment {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"attachment" type: typeType code: 'atts'];
    return constantObj;
}

+ (TMLConstant *)attributeRun {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"attributeRun" type: typeType code: 'catr'];
    return constantObj;
}

+ (TMLConstant *)backgroundColor {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"backgroundColor" type: typeType code: 'pbcl'];
    return constantObj;
}

+ (TMLConstant *)boldTextColor {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"boldTextColor" type: typeType code: 'pbtc'];
    return constantObj;
}

+ (TMLConstant *)bounds {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"bounds" type: typeType code: 'pbnd'];
    return constantObj;
}

+ (TMLConstant *)busy {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"busy" type: typeType code: 'busy'];
    return constantObj;
}

+ (TMLConstant *)character {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"character" type: typeType code: 'cha '];
    return constantObj;
}

+ (TMLConstant *)class_ {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"class_" type: typeType code: 'pcls'];
    return constantObj;
}

+ (TMLConstant *)closeable {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"closeable" type: typeType code: 'hclb'];
    return constantObj;
}

+ (TMLConstant *)collating {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"collating" type: typeType code: 'lwcl'];
    return constantObj;
}

+ (TMLConstant *)color {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"color" type: typeType code: 'colr'];
    return constantObj;
}

+ (TMLConstant *)contents {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"contents" type: typeType code: 'pcnt'];
    return constantObj;
}

+ (TMLConstant *)copies {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"copies" type: typeType code: 'lwcp'];
    return constantObj;
}

+ (TMLConstant *)cursorColor {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"cursorColor" type: typeType code: 'pcuc'];
    return constantObj;
}

+ (TMLConstant *)customTitle {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"customTitle" type: typeType code: 'titl'];
    return constantObj;
}

+ (TMLConstant *)document {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"document" type: typeType code: 'docu'];
    return constantObj;
}

+ (TMLConstant *)endingPage {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"endingPage" type: typeType code: 'lwlp'];
    return constantObj;
}

+ (TMLConstant *)errorHandling {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"errorHandling" type: typeType code: 'lweh'];
    return constantObj;
}

+ (TMLConstant *)faxNumber {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"faxNumber" type: typeType code: 'faxn'];
    return constantObj;
}

+ (TMLConstant *)fileName {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"fileName" type: typeType code: 'atfn'];
    return constantObj;
}

+ (TMLConstant *)floating {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"floating" type: typeType code: 'isfl'];
    return constantObj;
}

+ (TMLConstant *)font {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"font" type: typeType code: 'font'];
    return constantObj;
}

+ (TMLConstant *)frame {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"frame" type: typeType code: 'pfra'];
    return constantObj;
}

+ (TMLConstant *)frontmost {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"frontmost" type: typeType code: 'pisf'];
    return constantObj;
}

+ (TMLConstant *)history {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"history" type: typeType code: 'hist'];
    return constantObj;
}

+ (TMLConstant *)id_ {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"id_" type: typeType code: 'ID  '];
    return constantObj;
}

+ (TMLConstant *)index {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"index" type: typeType code: 'pidx'];
    return constantObj;
}

+ (TMLConstant *)item {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"item" type: typeType code: 'cobj'];
    return constantObj;
}

+ (TMLConstant *)miniaturizable {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"miniaturizable" type: typeType code: 'ismn'];
    return constantObj;
}

+ (TMLConstant *)miniaturized {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"miniaturized" type: typeType code: 'pmnd'];
    return constantObj;
}

+ (TMLConstant *)modal {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"modal" type: typeType code: 'pmod'];
    return constantObj;
}

+ (TMLConstant *)modified {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"modified" type: typeType code: 'imod'];
    return constantObj;
}

+ (TMLConstant *)name {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"name" type: typeType code: 'pnam'];
    return constantObj;
}

+ (TMLConstant *)normalTextColor {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"normalTextColor" type: typeType code: 'ptxc'];
    return constantObj;
}

+ (TMLConstant *)numberOfColumns {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"numberOfColumns" type: typeType code: 'ccol'];
    return constantObj;
}

+ (TMLConstant *)numberOfRows {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"numberOfRows" type: typeType code: 'crow'];
    return constantObj;
}

+ (TMLConstant *)origin {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"origin" type: typeType code: 'pori'];
    return constantObj;
}

+ (TMLConstant *)pagesAcross {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"pagesAcross" type: typeType code: 'lwla'];
    return constantObj;
}

+ (TMLConstant *)pagesDown {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"pagesDown" type: typeType code: 'lwld'];
    return constantObj;
}

+ (TMLConstant *)paragraph {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"paragraph" type: typeType code: 'cpar'];
    return constantObj;
}

+ (TMLConstant *)path {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"path" type: typeType code: 'ppth'];
    return constantObj;
}

+ (TMLConstant *)position {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"position" type: typeType code: 'ppos'];
    return constantObj;
}

+ (TMLConstant *)printSettings {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"printSettings" type: typeType code: 'pset'];
    return constantObj;
}

+ (TMLConstant *)processes {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"processes" type: typeType code: 'prcs'];
    return constantObj;
}

+ (TMLConstant *)properties {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"properties" type: typeType code: 'pALL'];
    return constantObj;
}

+ (TMLConstant *)resizable {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"resizable" type: typeType code: 'prsz'];
    return constantObj;
}

+ (TMLConstant *)size {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"size" type: typeType code: 'ptsz'];
    return constantObj;
}

+ (TMLConstant *)startingPage {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"startingPage" type: typeType code: 'lwfp'];
    return constantObj;
}

+ (TMLConstant *)targetPrinter {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"targetPrinter" type: typeType code: 'trpr'];
    return constantObj;
}

+ (TMLConstant *)text {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"text" type: typeType code: 'ctxt'];
    return constantObj;
}

+ (TMLConstant *)titleDisplaysCustomTitle {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"titleDisplaysCustomTitle" type: typeType code: 'tdct'];
    return constantObj;
}

+ (TMLConstant *)titleDisplaysDeviceName {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"titleDisplaysDeviceName" type: typeType code: 'tddn'];
    return constantObj;
}

+ (TMLConstant *)titleDisplaysFileName {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"titleDisplaysFileName" type: typeType code: 'tdfn'];
    return constantObj;
}

+ (TMLConstant *)titleDisplaysShellPath {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"titleDisplaysShellPath" type: typeType code: 'tdsp'];
    return constantObj;
}

+ (TMLConstant *)titleDisplaysWindowSize {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"titleDisplaysWindowSize" type: typeType code: 'tdws'];
    return constantObj;
}

+ (TMLConstant *)titled {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"titled" type: typeType code: 'ptit'];
    return constantObj;
}

+ (TMLConstant *)version_ {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"version_" type: typeType code: 'vers'];
    return constantObj;
}

+ (TMLConstant *)visible {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"visible" type: typeType code: 'pvis'];
    return constantObj;
}

+ (TMLConstant *)window {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"window" type: typeType code: 'cwin'];
    return constantObj;
}

+ (TMLConstant *)word {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"word" type: typeType code: 'cwor'];
    return constantObj;
}

+ (TMLConstant *)zoomable {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"zoomable" type: typeType code: 'iszm'];
    return constantObj;
}

+ (TMLConstant *)zoomed {
    static TMLConstant *constantObj;
    if (!constantObj)
        constantObj = [TMLConstant constantWithName: @"zoomed" type: typeType code: 'pzum'];
    return constantObj;
}

@end


