/*
 * ITRMReferenceRendererGlue.m
 *
 * /Volumes/iTerm/iTerm.app
 * 2007-02-18 21:09:47 (CST)
 *
 */

#import "ITRMReferenceRendererGlue.h"

@implementation ITRMReferenceRenderer

- (NSString *)propertyByCode:(OSType)code {
    switch (code) {
        case 'Aals': return @"antiAlias";
        case 'Bcol': return @"backgroundColor";
        case 'BImg': return @"backgroundImagePath";
        case 'bCol': return @"boldColor";
        case 'pbnd': return @"bounds";
        case 'pcls': return @"class_";
        case 'hclb': return @"closeable";
        case 'lwcl': return @"collating";
        case 'colr': return @"color";
        case 'ctxt': return @"contents";
        case 'lwcp': return @"copies";
        case 'Cssn': return @"currentSession";
        case 'Ctrm': return @"currentTerminal";
        case 'Ccol': return @"cursorColor";
        case 'Ctxt': return @"cursor_textColor";
        case 'docu': return @"document";
        case 'lwlp': return @"endingPage";
        case 'lweh': return @"errorHandling";
        case 'faxn': return @"faxNumber";
        case 'atfn': return @"fileName";
        case 'isfl': return @"floating";
        case 'font': return @"font";
        case 'Fcol': return @"foregroundColor";
        case 'pisf': return @"frontmost";
        case 'ID  ': return @"id_";
        case 'pidx': return @"index";
        case 'ismn': return @"miniaturizable";
        case 'pmnd': return @"miniaturized";
        case 'pmod': return @"modal";
        case 'imod': return @"modified";
        case 'pnam': return @"name";
        case 'Snum': return @"number";
        case 'Cols': return @"numberOfColumns";
        case 'Rows': return @"numberOfRows";
        case 'lwla': return @"pagesAcross";
        case 'lwld': return @"pagesDown";
        case 'ppth': return @"path";
        case 'pALL': return @"properties";
        case 'prsz': return @"resizable";
        case 'Scol': return @"selectionColor";
        case 'ptsz': return @"size";
        case 'lwfp': return @"startingPage";
        case 'trpr': return @"targetPrinter";
        case 'ptit': return @"titled";
        case 'Tran': return @"transparency";
        case 'Stty': return @"tty";
        case 'vers': return @"version_";
        case 'pvis': return @"visible";
        case 'iszm': return @"zoomable";
        case 'pzum': return @"zoomed";

        default: return nil;
    }
}

- (NSString *)elementByCode:(OSType)code {
    switch (code) {
        case 'atts': return @"attachment";
        case 'catr': return @"attributeRuns";
        case 'cha ': return @"characters";
        case 'colr': return @"colors";
        case 'docu': return @"documents";
        case 'capp': return @"iTermApplications";
        case 'cobj': return @"items";
        case 'cpar': return @"paragraphs";
        case 'pset': return @"printSettings";
        case 'Pssn': return @"sessions";
        case 'Ptrm': return @"terminals";
        case 'ctxt': return @"text";
        case 'cwin': return @"windows";
        case 'cwor': return @"words";

        default: return nil;
    }
}

+ (NSString *)render:(id)object {
    return [ITRMReferenceRenderer render: object withPrefix: @"ITRM"];
}

@end
