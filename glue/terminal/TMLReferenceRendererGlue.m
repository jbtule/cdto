/*
 * TMLReferenceRendererGlue.m
 *
 * /Applications/Utilities/Terminal.app
 * 2007-02-16 20:26:03 (CST)
 *
 */

#import "TMLReferenceRendererGlue.h"

@implementation TMLReferenceRenderer

- (NSString *)propertyByCode:(OSType)code {
    switch (code) {
        case 'pbcl': return @"backgroundColor";
        case 'pbtc': return @"boldTextColor";
        case 'pbnd': return @"bounds";
        case 'busy': return @"busy";
        case 'pcls': return @"class_";
        case 'hclb': return @"closeable";
        case 'lwcl': return @"collating";
        case 'colr': return @"color";
        case 'pcnt': return @"contents";
        case 'lwcp': return @"copies";
        case 'pcuc': return @"cursorColor";
        case 'titl': return @"customTitle";
        case 'docu': return @"document";
        case 'lwlp': return @"endingPage";
        case 'lweh': return @"errorHandling";
        case 'faxn': return @"faxNumber";
        case 'atfn': return @"fileName";
        case 'isfl': return @"floating";
        case 'font': return @"font";
        case 'pfra': return @"frame";
        case 'pisf': return @"frontmost";
        case 'hist': return @"history";
        case 'ID  ': return @"id_";
        case 'pidx': return @"index";
        case 'ismn': return @"miniaturizable";
        case 'pmnd': return @"miniaturized";
        case 'pmod': return @"modal";
        case 'imod': return @"modified";
        case 'pnam': return @"name";
        case 'ptxc': return @"normalTextColor";
        case 'ccol': return @"numberOfColumns";
        case 'crow': return @"numberOfRows";
        case 'pori': return @"origin";
        case 'lwla': return @"pagesAcross";
        case 'lwld': return @"pagesDown";
        case 'ppth': return @"path";
        case 'ppos': return @"position";
        case 'prcs': return @"processes";
        case 'pALL': return @"properties";
        case 'prsz': return @"resizable";
        case 'psiz': return @"size";
        case 'ptsz': return @"size";
        case 'lwfp': return @"startingPage";
        case 'trpr': return @"targetPrinter";
        case 'tdct': return @"titleDisplaysCustomTitle";
        case 'tddn': return @"titleDisplaysDeviceName";
        case 'tdfn': return @"titleDisplaysFileName";
        case 'tdsp': return @"titleDisplaysShellPath";
        case 'tdws': return @"titleDisplaysWindowSize";
        case 'ptit': return @"titled";
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
        case 'atts': return @"attachment";
        case 'catr': return @"attributeRuns";
        case 'cha ': return @"characters";
        case 'colr': return @"colors";
        case 'docu': return @"documents";
        case 'cobj': return @"items";
        case 'cpar': return @"paragraphs";
        case 'pset': return @"printSettings";
        case 'ctxt': return @"text";
        case 'cwin': return @"windows";
        case 'cwor': return @"words";

        default: return nil;
    }
}

+ (NSString *)render:(id)object {
    return [TMLReferenceRenderer render: object withPrefix: @"TML"];
}

@end
