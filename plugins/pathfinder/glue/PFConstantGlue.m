/*
 * PFConstantGlue.m
 *
 * /Applications/Path Finder.app
 * 2007-02-19 14:24:27 (EST)
 *
 */

#import "PFConstantGlue.h"

@implementation PFConstant

+ (id)constantWithCode:(OSType)code_ {
    switch (code_) {
        case 'pthP': return [self POSIXPath];
        case 'pURL': return [self URL];
        case 'capp': return [self application];
        case 'ask ': return [self ask];
        case 'atts': return [self attachment];
        case 'catr': return [self attributeRun];
        case 'pbnd': return [self bounds];
        case 'dcaP': return [self capacity];
        case 'cha ': return [self character];
        case 'pcls': return [self class_];
        case 'hclb': return [self closeable];
        case 'lwcl': return [self collating];
        case 'colr': return [self color];
        case 'ctnR': return [self container];
        case 'lwcp': return [self copies];
        case 'cdtE': return [self creationDate];
        case 'creT': return [self creatorType];
        case 'cviW': return [self currentView];
        case 'desK': return [self desktop];
        case 'lwdt': return [self detailed];
        case 'disK': return [self disk];
        case 'cdiS': return [self disk];
        case 'dnaM': return [self displayedName];
        case 'docu': return [self document];
        case 'dejC': return [self ejectable];
        case 'lwlp': return [self endingPage];
        case 'lweh': return [self errorHandling];
        case 'othP': return [self everyonesPrivileges];
        case 'extH': return [self extensionHidden];
        case 'faxn': return [self faxNumber];
        case 'atfn': return [self file];
        case 'file': return [self file];
        case 'typE': return [self fileType];
        case 'fwiD': return [self finderWindow];
        case 'font': return [self font];
        case 'dfrE': return [self freeSpace];
        case 'pisf': return [self frontmost];
        case 'cfiL': return [self fsFile];
        case 'cfoL': return [self fsFolder];
        case 'fsIM': return [self fsItem];
        case 'groP': return [self group];
        case 'grpP': return [self groupPrivileges];
        case 'homE': return [self home];
        case 'ID  ': return [self id_];
        case 'pidx': return [self index];
        case 'panl': return [self infoWindow];
        case 'iwnd': return [self informationWindow];
        case 'iteM': return [self item];
        case 'cobj': return [self item];
        case 'kinD': return [self kind];
        case 'labL': return [self labelIndex];
        case 'dloC': return [self localVolume];
        case 'locK': return [self locked];
        case 'ismn': return [self minimizable];
        case 'pmnd': return [self minimized];
        case 'mdtE': return [self modificationDate];
        case 'imod': return [self modified];
        case 'pnam': return [self name];
        case 'extN': return [self nameExtension];
        case 'no  ': return [self no];
        case 'ownR': return [self owner];
        case 'ownP': return [self ownerPrivileges];
        case 'lwla': return [self pagesAcross];
        case 'lwld': return [self pagesDown];
        case 'cpar': return [self paragraph];
        case 'pthH': return [self path];
        case 'psiZ': return [self physicalSize];
        case 'pset': return [self printSettings];
        case 'pALL': return [self properties];
        case 'prsz': return [self resizable];
        case 'ctxt': return [self richText];
        case 'slcT': return [self selection];
        case 'ptsz': return [self size];
        case 'lsiZ': return [self size];
        case 'lwst': return [self standard];
        case 'lwfp': return [self startingPage];
        case 'dboT': return [self startup];
        case 'srtD': return [self startupDisk];
        case 'tarG': return [self target];
        case 'trpr': return [self targetPrinter];
        case 'trsh': return [self trash];
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

+ (PFConstant *)ask {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"ask" type: typeEnumerated code: 'ask '];
    return constantObj;
}

+ (PFConstant *)detailed {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"detailed" type: typeEnumerated code: 'lwdt'];
    return constantObj;
}

+ (PFConstant *)no {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"no" type: typeEnumerated code: 'no  '];
    return constantObj;
}

+ (PFConstant *)standard {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"standard" type: typeEnumerated code: 'lwst'];
    return constantObj;
}

+ (PFConstant *)yes {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"yes" type: typeEnumerated code: 'yes '];
    return constantObj;
}


/* Types and properties */

+ (PFConstant *)POSIXPath {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"POSIXPath" type: typeType code: 'pthP'];
    return constantObj;
}

+ (PFConstant *)URL {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"URL" type: typeType code: 'pURL'];
    return constantObj;
}

+ (PFConstant *)application {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"application" type: typeType code: 'capp'];
    return constantObj;
}

+ (PFConstant *)attachment {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"attachment" type: typeType code: 'atts'];
    return constantObj;
}

+ (PFConstant *)attributeRun {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"attributeRun" type: typeType code: 'catr'];
    return constantObj;
}

+ (PFConstant *)bounds {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"bounds" type: typeType code: 'pbnd'];
    return constantObj;
}

+ (PFConstant *)capacity {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"capacity" type: typeType code: 'dcaP'];
    return constantObj;
}

+ (PFConstant *)character {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"character" type: typeType code: 'cha '];
    return constantObj;
}

+ (PFConstant *)class_ {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"class_" type: typeType code: 'pcls'];
    return constantObj;
}

+ (PFConstant *)closeable {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"closeable" type: typeType code: 'hclb'];
    return constantObj;
}

+ (PFConstant *)collating {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"collating" type: typeType code: 'lwcl'];
    return constantObj;
}

+ (PFConstant *)color {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"color" type: typeType code: 'colr'];
    return constantObj;
}

+ (PFConstant *)container {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"container" type: typeType code: 'ctnR'];
    return constantObj;
}

+ (PFConstant *)copies {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"copies" type: typeType code: 'lwcp'];
    return constantObj;
}

+ (PFConstant *)creationDate {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"creationDate" type: typeType code: 'cdtE'];
    return constantObj;
}

+ (PFConstant *)creatorType {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"creatorType" type: typeType code: 'creT'];
    return constantObj;
}

+ (PFConstant *)currentView {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"currentView" type: typeType code: 'cviW'];
    return constantObj;
}

+ (PFConstant *)desktop {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"desktop" type: typeType code: 'desK'];
    return constantObj;
}

+ (PFConstant *)disk {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"disk" type: typeType code: 'cdiS'];
    return constantObj;
}

+ (PFConstant *)displayedName {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"displayedName" type: typeType code: 'dnaM'];
    return constantObj;
}

+ (PFConstant *)document {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"document" type: typeType code: 'docu'];
    return constantObj;
}

+ (PFConstant *)ejectable {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"ejectable" type: typeType code: 'dejC'];
    return constantObj;
}

+ (PFConstant *)endingPage {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"endingPage" type: typeType code: 'lwlp'];
    return constantObj;
}

+ (PFConstant *)errorHandling {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"errorHandling" type: typeType code: 'lweh'];
    return constantObj;
}

+ (PFConstant *)everyonesPrivileges {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"everyonesPrivileges" type: typeType code: 'othP'];
    return constantObj;
}

+ (PFConstant *)extensionHidden {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"extensionHidden" type: typeType code: 'extH'];
    return constantObj;
}

+ (PFConstant *)faxNumber {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"faxNumber" type: typeType code: 'faxn'];
    return constantObj;
}

+ (PFConstant *)file {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"file" type: typeType code: 'file'];
    return constantObj;
}

+ (PFConstant *)fileType {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"fileType" type: typeType code: 'typE'];
    return constantObj;
}

+ (PFConstant *)finderWindow {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"finderWindow" type: typeType code: 'fwiD'];
    return constantObj;
}

+ (PFConstant *)font {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"font" type: typeType code: 'font'];
    return constantObj;
}

+ (PFConstant *)freeSpace {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"freeSpace" type: typeType code: 'dfrE'];
    return constantObj;
}

+ (PFConstant *)frontmost {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"frontmost" type: typeType code: 'pisf'];
    return constantObj;
}

+ (PFConstant *)fsFile {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"fsFile" type: typeType code: 'cfiL'];
    return constantObj;
}

+ (PFConstant *)fsFolder {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"fsFolder" type: typeType code: 'cfoL'];
    return constantObj;
}

+ (PFConstant *)fsItem {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"fsItem" type: typeType code: 'fsIM'];
    return constantObj;
}

+ (PFConstant *)group {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"group" type: typeType code: 'groP'];
    return constantObj;
}

+ (PFConstant *)groupPrivileges {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"groupPrivileges" type: typeType code: 'grpP'];
    return constantObj;
}

+ (PFConstant *)home {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"home" type: typeType code: 'homE'];
    return constantObj;
}

+ (PFConstant *)id_ {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"id_" type: typeType code: 'ID  '];
    return constantObj;
}

+ (PFConstant *)index {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"index" type: typeType code: 'pidx'];
    return constantObj;
}

+ (PFConstant *)infoWindow {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"infoWindow" type: typeType code: 'panl'];
    return constantObj;
}

+ (PFConstant *)informationWindow {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"informationWindow" type: typeType code: 'iwnd'];
    return constantObj;
}

+ (PFConstant *)item {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"item" type: typeType code: 'cobj'];
    return constantObj;
}

+ (PFConstant *)kind {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"kind" type: typeType code: 'kinD'];
    return constantObj;
}

+ (PFConstant *)labelIndex {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"labelIndex" type: typeType code: 'labL'];
    return constantObj;
}

+ (PFConstant *)localVolume {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"localVolume" type: typeType code: 'dloC'];
    return constantObj;
}

+ (PFConstant *)locked {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"locked" type: typeType code: 'locK'];
    return constantObj;
}

+ (PFConstant *)minimizable {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"minimizable" type: typeType code: 'ismn'];
    return constantObj;
}

+ (PFConstant *)minimized {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"minimized" type: typeType code: 'pmnd'];
    return constantObj;
}

+ (PFConstant *)modificationDate {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"modificationDate" type: typeType code: 'mdtE'];
    return constantObj;
}

+ (PFConstant *)modified {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"modified" type: typeType code: 'imod'];
    return constantObj;
}

+ (PFConstant *)name {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"name" type: typeType code: 'pnam'];
    return constantObj;
}

+ (PFConstant *)nameExtension {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"nameExtension" type: typeType code: 'extN'];
    return constantObj;
}

+ (PFConstant *)owner {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"owner" type: typeType code: 'ownR'];
    return constantObj;
}

+ (PFConstant *)ownerPrivileges {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"ownerPrivileges" type: typeType code: 'ownP'];
    return constantObj;
}

+ (PFConstant *)pagesAcross {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"pagesAcross" type: typeType code: 'lwla'];
    return constantObj;
}

+ (PFConstant *)pagesDown {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"pagesDown" type: typeType code: 'lwld'];
    return constantObj;
}

+ (PFConstant *)paragraph {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"paragraph" type: typeType code: 'cpar'];
    return constantObj;
}

+ (PFConstant *)path {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"path" type: typeType code: 'pthH'];
    return constantObj;
}

+ (PFConstant *)physicalSize {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"physicalSize" type: typeType code: 'psiZ'];
    return constantObj;
}

+ (PFConstant *)printSettings {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"printSettings" type: typeType code: 'pset'];
    return constantObj;
}

+ (PFConstant *)properties {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"properties" type: typeType code: 'pALL'];
    return constantObj;
}

+ (PFConstant *)resizable {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"resizable" type: typeType code: 'prsz'];
    return constantObj;
}

+ (PFConstant *)richText {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"richText" type: typeType code: 'ctxt'];
    return constantObj;
}

+ (PFConstant *)selection {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"selection" type: typeType code: 'slcT'];
    return constantObj;
}

+ (PFConstant *)size {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"size" type: typeType code: 'ptsz'];
    return constantObj;
}

+ (PFConstant *)startingPage {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"startingPage" type: typeType code: 'lwfp'];
    return constantObj;
}

+ (PFConstant *)startup {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"startup" type: typeType code: 'dboT'];
    return constantObj;
}

+ (PFConstant *)startupDisk {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"startupDisk" type: typeType code: 'srtD'];
    return constantObj;
}

+ (PFConstant *)target {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"target" type: typeType code: 'tarG'];
    return constantObj;
}

+ (PFConstant *)targetPrinter {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"targetPrinter" type: typeType code: 'trpr'];
    return constantObj;
}

+ (PFConstant *)trash {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"trash" type: typeType code: 'trsh'];
    return constantObj;
}

+ (PFConstant *)version_ {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"version_" type: typeType code: 'vers'];
    return constantObj;
}

+ (PFConstant *)visible {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"visible" type: typeType code: 'pvis'];
    return constantObj;
}

+ (PFConstant *)window {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"window" type: typeType code: 'cwin'];
    return constantObj;
}

+ (PFConstant *)word {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"word" type: typeType code: 'cwor'];
    return constantObj;
}

+ (PFConstant *)zoomable {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"zoomable" type: typeType code: 'iszm'];
    return constantObj;
}

+ (PFConstant *)zoomed {
    static PFConstant *constantObj;
    if (!constantObj)
        constantObj = [PFConstant constantWithName: @"zoomed" type: typeType code: 'pzum'];
    return constantObj;
}

@end


