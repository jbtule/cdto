/*
 * PFReferenceRendererGlue.m
 *
 * /Applications/Path Finder.app
 * 2007-02-19 14:24:27 (EST)
 *
 */

#import "PFReferenceRendererGlue.h"

@implementation PFReferenceRenderer

- (NSString *)propertyByCode:(OSType)code {
    switch (code) {
        case 'pthP': return @"POSIXPath";
        case 'pURL': return @"URL";
        case 'pbnd': return @"bounds";
        case 'dcaP': return @"capacity";
        case 'pcls': return @"class_";
        case 'hclb': return @"closeable";
        case 'lwcl': return @"collating";
        case 'colr': return @"color";
        case 'ctnR': return @"container";
        case 'lwcp': return @"copies";
        case 'cdtE': return @"creationDate";
        case 'creT': return @"creatorType";
        case 'cviW': return @"currentView";
        case 'desK': return @"desktop";
        case 'disK': return @"disk";
        case 'dnaM': return @"displayedName";
        case 'docu': return @"document";
        case 'dejC': return @"ejectable";
        case 'lwlp': return @"endingPage";
        case 'lweh': return @"errorHandling";
        case 'othP': return @"everyonesPrivileges";
        case 'extH': return @"extensionHidden";
        case 'faxn': return @"faxNumber";
        case 'atfn': return @"file";
        case 'file': return @"file";
        case 'typE': return @"fileType";
        case 'font': return @"font";
        case 'dfrE': return @"freeSpace";
        case 'pisf': return @"frontmost";
        case 'groP': return @"group";
        case 'grpP': return @"groupPrivileges";
        case 'homE': return @"home";
        case 'ID  ': return @"id_";
        case 'pidx': return @"index";
        case 'iwnd': return @"informationWindow";
        case 'iteM': return @"item";
        case 'kinD': return @"kind";
        case 'labL': return @"labelIndex";
        case 'dloC': return @"localVolume";
        case 'locK': return @"locked";
        case 'ismn': return @"minimizable";
        case 'pmnd': return @"minimized";
        case 'mdtE': return @"modificationDate";
        case 'imod': return @"modified";
        case 'pnam': return @"name";
        case 'extN': return @"nameExtension";
        case 'ownR': return @"owner";
        case 'ownP': return @"ownerPrivileges";
        case 'lwla': return @"pagesAcross";
        case 'lwld': return @"pagesDown";
        case 'pthH': return @"path";
        case 'psiZ': return @"physicalSize";
        case 'pALL': return @"properties";
        case 'prsz': return @"resizable";
        case 'slcT': return @"selection";
        case 'lsiZ': return @"size";
        case 'ptsz': return @"size";
        case 'lwfp': return @"startingPage";
        case 'dboT': return @"startup";
        case 'srtD': return @"startupDisk";
        case 'tarG': return @"target";
        case 'trpr': return @"targetPrinter";
        case 'trsh': return @"trash";
        case 'vers': return @"version_";
        case 'pvis': return @"visible";
        case 'iszm': return @"zoomable";
        case 'pzum': return @"zoomed";

        default: return nil;
    }
}

- (NSString *)elementByCode:(OSType)code {
    switch (code) {
        case 'capp': return @"applications";
        case 'atts': return @"attachments";
        case 'catr': return @"attributeRuns";
        case 'cha ': return @"characters";
        case 'ctnR': return @"containers";
        case 'cdiS': return @"disks";
        case 'docu': return @"documents";
        case 'fwiD': return @"finderWindows";
        case 'cfiL': return @"fsFiles";
        case 'cfoL': return @"fsFolders";
        case 'fsIM': return @"fsItems";
        case 'panl': return @"infoWindows";
        case 'cobj': return @"items";
        case 'cpar': return @"paragraphs";
        case 'pset': return @"printSettings";
        case 'ctxt': return @"richText";
        case 'cwin': return @"windows";
        case 'cwor': return @"words";

        default: return nil;
    }
}

+ (NSString *)render:(id)object {
    return [PFReferenceRenderer render: object withPrefix: @"PF"];
}

@end
