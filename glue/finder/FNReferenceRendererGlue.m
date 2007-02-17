/*
 * FNReferenceRendererGlue.m
 *
 * /System/Library/CoreServices/Finder.app
 * 2007-02-16 20:30:45 (CST)
 *
 */

#import "FNReferenceRendererGlue.h"

@implementation FNReferenceRenderer

- (NSString *)propertyByCode:(OSType)code {
    switch (code) {
        case 'pfrp': return @"FinderPreferences";
        case 'pURL': return @"URL";
        case 'isab': return @"acceptsHighLevelEvents";
        case 'revt': return @"acceptsRemoteEvents";
        case 'psnx': return @"allNameExtensionsShowing";
        case 'appf': return @"applicationFile";
        case 'iarr': return @"arrangement";
        case 'colr': return @"backgroundColor";
        case 'ibkg': return @"backgroundPicture";
        case 'pbnd': return @"bounds";
        case 'sfsz': return @"calculatesFolderSizes";
        case 'capa': return @"capacity";
        case 'pcls': return @"class_";
        case 'pcli': return @"clipboard";
        case 'lwnd': return @"clippingWindow";
        case 'hclb': return @"closeable";
        case 'wshd': return @"collapsed";
        case 'cvop': return @"columnViewOptions";
        case 'comt': return @"comment";
        case 'pexc': return @"completelyExpanded";
        case 'pcmp': return @"computerContainer";
        case 'ctnr': return @"container";
        case 'cwnd': return @"containerWindow";
        case 'ascd': return @"creationDate";
        case 'fcrt': return @"creatorType";
        case 'panl': return @"currentPanel";
        case 'pvew': return @"currentView";
        case 'dela': return @"delayBeforeSpringing";
        case 'dscr': return @"description_";
        case 'dafi': return @"deskAccessoryFile";
        case 'desk': return @"desktop";
        case 'dpic': return @"desktopPicture";
        case 'dpos': return @"desktopPosition";
        case 'pdsv': return @"desktopShowsConnectedServers";
        case 'pdhd': return @"desktopShowsHardDisks";
        case 'pdrm': return @"desktopShowsRemovableMedia";
        case 'dspr': return @"disclosesPreviewPane";
        case 'cdis': return @"disk";
        case 'dnam': return @"displayedName";
        case 'isej': return @"ejectable";
        case 'ects': return @"entireContents";
        case 'gstp': return @"everyonesPrivileges";
        case 'pexa': return @"expandable";
        case 'pexp': return @"expanded";
        case 'hidx': return @"extensionHidden";
        case 'file': return @"file";
        case 'asty': return @"fileType";
        case 'isfl': return @"floating";
        case 'ponw': return @"foldersOpenInNewWindows";
        case 'sprg': return @"foldersSpringOpen";
        case 'dfmt': return @"format";
        case 'frsp': return @"freeSpace";
        case 'pisf': return @"frontmost";
        case 'sgrp': return @"group";
        case 'gppr': return @"groupPrivileges";
        case 'hscr': return @"hasScriptingTerminology";
        case 'home': return @"home";
        case 'iimg': return @"icon";
        case 'lvis': return @"iconSize";
        case 'icop': return @"iconViewOptions";
        case 'ID  ': return @"id_";
        case 'igpr': return @"ignorePrivileges";
        case 'pidx': return @"index";
        case 'iwnd': return @"informationWindow";
        case 'pins': return @"insertionLocation";
        case 'cobj': return @"item";
        case 'Jrnl': return @"journalingEnabled";
        case 'kind': return @"kind";
        case 'labi': return @"labelIndex";
        case 'lpos': return @"labelPosition";
        case 'il32': return @"large32BitIcon";
        case 'icl4': return @"large4BitIcon";
        case 'icl8': return @"large8BitIcon";
        case 'l8mk': return @"large8BitMask";
        case 'ICN#': return @"largeMonochromeIconAndMask";
        case 'lvop': return @"listViewOptions";
        case 'isrv': return @"localVolume";
        case 'iloc': return @"location";
        case 'aslk': return @"locked";
        case 'clwm': return @"maximumWidth";
        case 'mprt': return @"minimumSize";
        case 'clwn': return @"minimumWidth";
        case 'pmod': return @"modal";
        case 'asmo': return @"modificationDate";
        case 'pnam': return @"name";
        case 'nmxt': return @"nameExtension";
        case 'pnwt': return @"newWindowTarget";
        case 'pocv': return @"newWindowsOpenInColumnView";
        case 'Clsc': return @"opensInClassic";
        case 'orig': return @"originalItem";
        case 'sown': return @"owner";
        case 'ownr': return @"ownerPrivileges";
        case 'pusd': return @"partitionSpaceUsed";
        case 'phys': return @"physicalSize";
        case 'posn': return @"position";
        case 'ver2': return @"productVersion";
        case 'pALL': return @"properties";
        case 'prsz': return @"resizable";
        case 'sele': return @"selection";
        case 'shic': return @"showsIcon";
        case 'prvw': return @"showsIconPreview";
        case 'mnfo': return @"showsItemInfo";
        case 'shpr': return @"showsPreviewColumn";
        case 'sbwi': return @"sidebarWidth";
        case 'ptsz': return @"size";
        case 'is32': return @"small32BitIcon";
        case 'ics4': return @"small4BitIcon";
        case 'ics8': return @"small8BitIcon";
        case 'ics#': return @"smallMonochromeIconAndMask";
        case 'srtc': return @"sortColumn";
        case 'sord': return @"sortDirection";
        case 'istd': return @"startup";
        case 'sdsk': return @"startupDisk";
        case 'pspd': return @"stationery";
        case 'stvi': return @"statusbarVisible";
        case 'sprt': return @"suggestedSize";
        case 'fvtg': return @"target";
        case 'fsiz': return @"textSize";
        case 'ptit': return @"titled";
        case 'tbvi': return @"toolbarVisible";
        case 'appt': return @"totalPartitionSize";
        case 'trsh': return @"trash";
        case 'urdt': return @"usesRelativeDates";
        case 'vers': return @"version_";
        case 'pvis': return @"visible";
        case 'warn': return @"warnsBeforeEmptying";
        case 'clwd': return @"width";
        case 'cwin': return @"window";
        case 'iszm': return @"zoomable";
        case 'pzum': return @"zoomed";
        case 'zumf': return @"zoomedFullSize";

        default: return nil;
    }
}

- (NSString *)elementByCode:(OSType)code {
    switch (code) {
        case 'brow': return @"FinderWindows";
        case 'alia': return @"aliasFiles";
        case 'alst': return @"aliasList";
        case 'capp': return @"application";
        case 'appf': return @"applicationFiles";
        case 'pcap': return @"applicationProcesses";
        case 'lwnd': return @"clippingWindows";
        case 'clpf': return @"clippings";
        case 'cvop': return @"columnViewOptions";
        case 'lvcl': return @"columns";
        case 'ccmp': return @"computerObject";
        case 'ctnr': return @"containers";
        case 'pcda': return @"deskAccessoryProcesses";
        case 'cdsk': return @"desktopObject";
        case 'dktw': return @"desktopWindow";
        case 'cdis': return @"disks";
        case 'docf': return @"documentFiles";
        case 'file': return @"files";
        case 'cfol': return @"folders";
        case 'ifam': return @"iconFamily";
        case 'icop': return @"iconViewOptions";
        case 'iwnd': return @"informationWindow";
        case 'inlf': return @"internetLocationFiles";
        case 'cobj': return @"items";
        case 'clbl': return @"label";
        case 'lvop': return @"listViewOptions";
        case 'pack': return @"packages";
        case 'cprf': return @"preferences";
        case 'pwnd': return @"preferencesWindow";
        case 'prcs': return @"processes";
        case 'ctrs': return @"trashObject";
        case 'cwin': return @"windows";

        default: return nil;
    }
}

+ (NSString *)render:(id)object {
    return [FNReferenceRenderer render: object withPrefix: @"FN"];
}

@end
