/*
 * FNConstantGlue.m
 *
 * /System/Library/CoreServices/Finder.app
 * 2007-02-16 20:30:45 (CST)
 *
 */

#import "FNConstantGlue.h"

@implementation FNConstant

+ (id)constantWithCode:(OSType)code_ {
    switch (code_) {
        case 'padv': return [self AdvancedPreferencesPanel];
        case 'dfph': return [self ApplePhotoFormat];
        case 'dfas': return [self AppleShareFormat];
        case 'apnl': return [self ApplicationPanel];
        case 'cpnl': return [self CommentsPanel];
        case 'cinl': return [self ContentIndexPanel];
        case 'dfft': return [self FTPFormat];
        case 'pfrp': return [self FinderPreferences];
        case 'brow': return [self FinderWindow];
        case 'gpnl': return [self GeneralInformationPanel];
        case 'pgnp': return [self GeneralPreferencesPanel];
        case 'dfhs': return [self HighSierraFormat];
        case 'df96': return [self ISO9660Format];
        case 'plbp': return [self LabelPreferencesPanel];
        case 'pklg': return [self LanguagesPanel];
        case 'dfms': return [self MSDOSFormat];
        case 'dfh+': return [self MacOSExtendedFormat];
        case 'dfhf': return [self MacOSFormat];
        case 'mpnl': return [self MemoryPanel];
        case 'dfnf': return [self NFSFormat];
        case 'dfnt': return [self NTFSFormat];
        case 'npnl': return [self NameAndExtensionPanel];
        case 'dfpu': return [self PacketWrittenUDFFormat];
        case 'pkpg': return [self PluginsPanel];
        case 'vpnl': return [self PreviewPanel];
        case 'dfpr': return [self ProDOSFormat];
        case 'dfqt': return [self QuickTakeFormat];
        case 'spnl': return [self SharingPanel];
        case 'psid': return [self SidebarPreferencesPanel];
        case 'dfud': return [self UDFFormat];
        case 'dfuf': return [self UFSFormat];
        case 'pURL': return [self URL];
        case 'dfwd': return [self WebDAVFormat];
        case 'dfac': return [self XsanFormat];
        case 'isab': return [self acceptsHighLevelEvents];
        case 'revt': return [self acceptsRemoteEvents];
        case 'alia': return [self aliasFile];
        case 'alst': return [self aliasList];
        case 'psnx': return [self allNameExtensionsShowing];
        case 'capp': return [self application];
        case 'appf': return [self applicationFile];
        case 'pcap': return [self applicationProcess];
        case 'cdta': return [self arrangedByCreationDate];
        case 'kina': return [self arrangedByKind];
        case 'laba': return [self arrangedByLabel];
        case 'mdta': return [self arrangedByModificationDate];
        case 'nama': return [self arrangedByName];
        case 'siza': return [self arrangedBySize];
        case 'iarr': return [self arrangement];
        case 'dfau': return [self audioFormat];
        case 'colr': return [self backgroundColor];
        case 'ibkg': return [self backgroundPicture];
        case 'lbot': return [self bottom];
        case 'pbnd': return [self bounds];
        case 'sfsz': return [self calculatesFolderSizes];
        case 'capa': return [self capacity];
        case 'pcls': return [self class_];
        case 'pcli': return [self clipboard];
        case 'clpf': return [self clipping];
        case 'lwnd': return [self clippingWindow];
        case 'hclb': return [self closeable];
        case 'wshd': return [self collapsed];
        case 'lvcl': return [self column];
        case 'clvw': return [self columnView];
        case 'cvop': return [self columnViewOptions];
        case 'comt': return [self comment];
        case 'elsC': return [self commentColumn];
        case 'pexc': return [self completelyExpanded];
        case 'pcmp': return [self computerContainer];
        case 'ccmp': return [self computerObject];
        case 'ctnr': return [self container];
        case 'cwnd': return [self containerWindow];
        case 'ascd': return [self creationDate];
        case 'elsc': return [self creationDateColumn];
        case 'fcrt': return [self creatorType];
        case 'panl': return [self currentPanel];
        case 'pvew': return [self currentView];
        case 'dela': return [self delayBeforeSpringing];
        case 'dscr': return [self description_];
        case 'dafi': return [self deskAccessoryFile];
        case 'pcda': return [self deskAccessoryProcess];
        case 'desk': return [self desktop];
        case 'cdsk': return [self desktopObject];
        case 'dpic': return [self desktopPicture];
        case 'dpos': return [self desktopPosition];
        case 'pdsv': return [self desktopShowsConnectedServers];
        case 'pdhd': return [self desktopShowsHardDisks];
        case 'pdrm': return [self desktopShowsRemovableMedia];
        case 'dktw': return [self desktopWindow];
        case 'dspr': return [self disclosesPreviewPane];
        case 'cdis': return [self disk];
        case 'dnam': return [self displayedName];
        case 'docf': return [self documentFile];
        case 'isej': return [self ejectable];
        case 'ects': return [self entireContents];
        case 'gstp': return [self everyonesPrivileges];
        case 'pexa': return [self expandable];
        case 'pexp': return [self expanded];
        case 'hidx': return [self extensionHidden];
        case 'file': return [self file];
        case 'asty': return [self fileType];
        case 'isfl': return [self floating];
        case 'cfol': return [self folder];
        case 'ponw': return [self foldersOpenInNewWindows];
        case 'sprg': return [self foldersSpringOpen];
        case 'dfmt': return [self format];
        case 'frsp': return [self freeSpace];
        case 'pisf': return [self frontmost];
        case 'sgrp': return [self group];
        case 'gppr': return [self groupPrivileges];
        case 'grvw': return [self groupView];
        case 'hscr': return [self hasScriptingTerminology];
        case 'home': return [self home];
        case 'iimg': return [self icon];
        case 'ifam': return [self iconFamily];
        case 'lvis': return [self iconSize];
        case 'icnv': return [self iconView];
        case 'icop': return [self iconViewOptions];
        case 'ID  ': return [self id_];
        case 'igpr': return [self ignorePrivileges];
        case 'pidx': return [self index];
        case 'iwnd': return [self informationWindow];
        case 'pins': return [self insertionLocation];
        case 'inlf': return [self internetLocationFile];
        case 'cobj': return [self item];
        case 'Jrnl': return [self journalingEnabled];
        case 'kind': return [self kind];
        case 'elsk': return [self kindColumn];
        case 'clbl': return [self label];
        case 'elsl': return [self labelColumn];
        case 'labi': return [self labelIndex];
        case 'lpos': return [self labelPosition];
        case 'il32': return [self large32BitIcon];
        case 'icl4': return [self large4BitIcon];
        case 'icl8': return [self large8BitIcon];
        case 'l8mk': return [self large8BitMask];
        case 'lgic': return [self largeIcon];
        case 'ICN#': return [self largeMonochromeIconAndMask];
        case 'lsvw': return [self listView];
        case 'lvop': return [self listViewOptions];
        case 'isrv': return [self localVolume];
        case 'iloc': return [self location];
        case 'aslk': return [self locked];
        case 'clwm': return [self maximumWidth];
        case 'miic': return [self mini];
        case 'mprt': return [self minimumSize];
        case 'clwn': return [self minimumWidth];
        case 'pmod': return [self modal];
        case 'asmo': return [self modificationDate];
        case 'elsm': return [self modificationDateColumn];
        case 'pnam': return [self name];
        case 'elsn': return [self nameColumn];
        case 'nmxt': return [self nameExtension];
        case 'pnwt': return [self newWindowTarget];
        case 'pocv': return [self newWindowsOpenInColumnView];
        case 'none': return [self none];
        case 'snrm': return [self normal];
        case 'narr': return [self notArranged];
        case 'Clsc': return [self opensInClassic];
        case 'orig': return [self originalItem];
        case 'sown': return [self owner];
        case 'ownr': return [self ownerPrivileges];
        case 'pack': return [self package];
        case 'pusd': return [self partitionSpaceUsed];
        case 'posn': return [self position];
        case 'cprf': return [self preferences];
        case 'pwnd': return [self preferencesWindow];
        case 'prcs': return [self process];
        case 'ver2': return [self productVersion];
        case 'pALL': return [self properties];
        case 'read': return [self readOnly];
        case 'rdwr': return [self readWrite];
        case 'prsz': return [self resizable];
        case 'srvs': return [self reversed];
        case 'lrgt': return [self right];
        case 'sele': return [self selection];
        case 'shic': return [self showsIcon];
        case 'prvw': return [self showsIconPreview];
        case 'mnfo': return [self showsItemInfo];
        case 'shpr': return [self showsPreviewColumn];
        case 'sbwi': return [self sidebarWidth];
        case 'ptsz': return [self size];
        case 'phys': return [self size];
        case 'elss': return [self sizeColumn];
        case 'is32': return [self small32BitIcon];
        case 'ics4': return [self small4BitIcon];
        case 'ics8': return [self small8BitIcon];
        case 'smic': return [self smallIcon];
        case 'ics#': return [self smallMonochromeIconAndMask];
        case 'grda': return [self snapToGrid];
        case 'srtc': return [self sortColumn];
        case 'sord': return [self sortDirection];
        case 'istd': return [self startup];
        case 'sdsk': return [self startupDisk];
        case 'pspd': return [self stationery];
        case 'stvi': return [self statusbarVisible];
        case 'sprt': return [self suggestedSize];
        case 'fvtg': return [self target];
        case 'fsiz': return [self textSize];
        case 'ptit': return [self titled];
        case 'tbvi': return [self toolbarVisible];
        case 'appt': return [self totalPartitionSize];
        case 'trsh': return [self trash];
        case 'ctrs': return [self trashObject];
        case 'df??': return [self unknownFormat];
        case 'urdt': return [self usesRelativeDates];
        case 'elsv': return [self versionColumn];
        case 'vers': return [self version_];
        case 'pvis': return [self visible];
        case 'warn': return [self warnsBeforeEmptying];
        case 'clwd': return [self width];
        case 'cwin': return [self window];
        case 'writ': return [self writeOnly];
        case 'iszm': return [self zoomable];
        case 'pzum': return [self zoomed];
        case 'zumf': return [self zoomedFullSize];
        default: return [[self superclass] constantWithCode: code_];
    }
}


/* Enumerators */

+ (FNConstant *)AdvancedPreferencesPanel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"AdvancedPreferencesPanel" type: typeEnumerated code: 'padv'];
    return constantObj;
}

+ (FNConstant *)ApplePhotoFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"ApplePhotoFormat" type: typeEnumerated code: 'dfph'];
    return constantObj;
}

+ (FNConstant *)AppleShareFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"AppleShareFormat" type: typeEnumerated code: 'dfas'];
    return constantObj;
}

+ (FNConstant *)ApplicationPanel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"ApplicationPanel" type: typeEnumerated code: 'apnl'];
    return constantObj;
}

+ (FNConstant *)CommentsPanel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"CommentsPanel" type: typeEnumerated code: 'cpnl'];
    return constantObj;
}

+ (FNConstant *)ContentIndexPanel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"ContentIndexPanel" type: typeEnumerated code: 'cinl'];
    return constantObj;
}

+ (FNConstant *)FTPFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"FTPFormat" type: typeEnumerated code: 'dfft'];
    return constantObj;
}

+ (FNConstant *)GeneralInformationPanel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"GeneralInformationPanel" type: typeEnumerated code: 'gpnl'];
    return constantObj;
}

+ (FNConstant *)GeneralPreferencesPanel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"GeneralPreferencesPanel" type: typeEnumerated code: 'pgnp'];
    return constantObj;
}

+ (FNConstant *)HighSierraFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"HighSierraFormat" type: typeEnumerated code: 'dfhs'];
    return constantObj;
}

+ (FNConstant *)ISO9660Format {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"ISO9660Format" type: typeEnumerated code: 'df96'];
    return constantObj;
}

+ (FNConstant *)LabelPreferencesPanel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"LabelPreferencesPanel" type: typeEnumerated code: 'plbp'];
    return constantObj;
}

+ (FNConstant *)LanguagesPanel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"LanguagesPanel" type: typeEnumerated code: 'pklg'];
    return constantObj;
}

+ (FNConstant *)MSDOSFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"MSDOSFormat" type: typeEnumerated code: 'dfms'];
    return constantObj;
}

+ (FNConstant *)MacOSExtendedFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"MacOSExtendedFormat" type: typeEnumerated code: 'dfh+'];
    return constantObj;
}

+ (FNConstant *)MacOSFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"MacOSFormat" type: typeEnumerated code: 'dfhf'];
    return constantObj;
}

+ (FNConstant *)MemoryPanel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"MemoryPanel" type: typeEnumerated code: 'mpnl'];
    return constantObj;
}

+ (FNConstant *)NFSFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"NFSFormat" type: typeEnumerated code: 'dfnf'];
    return constantObj;
}

+ (FNConstant *)NTFSFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"NTFSFormat" type: typeEnumerated code: 'dfnt'];
    return constantObj;
}

+ (FNConstant *)NameAndExtensionPanel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"NameAndExtensionPanel" type: typeEnumerated code: 'npnl'];
    return constantObj;
}

+ (FNConstant *)PacketWrittenUDFFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"PacketWrittenUDFFormat" type: typeEnumerated code: 'dfpu'];
    return constantObj;
}

+ (FNConstant *)PluginsPanel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"PluginsPanel" type: typeEnumerated code: 'pkpg'];
    return constantObj;
}

+ (FNConstant *)PreviewPanel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"PreviewPanel" type: typeEnumerated code: 'vpnl'];
    return constantObj;
}

+ (FNConstant *)ProDOSFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"ProDOSFormat" type: typeEnumerated code: 'dfpr'];
    return constantObj;
}

+ (FNConstant *)QuickTakeFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"QuickTakeFormat" type: typeEnumerated code: 'dfqt'];
    return constantObj;
}

+ (FNConstant *)SharingPanel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"SharingPanel" type: typeEnumerated code: 'spnl'];
    return constantObj;
}

+ (FNConstant *)SidebarPreferencesPanel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"SidebarPreferencesPanel" type: typeEnumerated code: 'psid'];
    return constantObj;
}

+ (FNConstant *)UDFFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"UDFFormat" type: typeEnumerated code: 'dfud'];
    return constantObj;
}

+ (FNConstant *)UFSFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"UFSFormat" type: typeEnumerated code: 'dfuf'];
    return constantObj;
}

+ (FNConstant *)WebDAVFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"WebDAVFormat" type: typeEnumerated code: 'dfwd'];
    return constantObj;
}

+ (FNConstant *)XsanFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"XsanFormat" type: typeEnumerated code: 'dfac'];
    return constantObj;
}

+ (FNConstant *)arrangedByCreationDate {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"arrangedByCreationDate" type: typeEnumerated code: 'cdta'];
    return constantObj;
}

+ (FNConstant *)arrangedByKind {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"arrangedByKind" type: typeEnumerated code: 'kina'];
    return constantObj;
}

+ (FNConstant *)arrangedByLabel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"arrangedByLabel" type: typeEnumerated code: 'laba'];
    return constantObj;
}

+ (FNConstant *)arrangedByModificationDate {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"arrangedByModificationDate" type: typeEnumerated code: 'mdta'];
    return constantObj;
}

+ (FNConstant *)arrangedByName {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"arrangedByName" type: typeEnumerated code: 'nama'];
    return constantObj;
}

+ (FNConstant *)arrangedBySize {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"arrangedBySize" type: typeEnumerated code: 'siza'];
    return constantObj;
}

+ (FNConstant *)audioFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"audioFormat" type: typeEnumerated code: 'dfau'];
    return constantObj;
}

+ (FNConstant *)bottom {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"bottom" type: typeEnumerated code: 'lbot'];
    return constantObj;
}

+ (FNConstant *)columnView {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"columnView" type: typeEnumerated code: 'clvw'];
    return constantObj;
}

+ (FNConstant *)comment {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"comment" type: typeEnumerated code: 'comt'];
    return constantObj;
}

+ (FNConstant *)commentColumn {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"commentColumn" type: typeEnumerated code: 'elsC'];
    return constantObj;
}

+ (FNConstant *)creationDate {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"creationDate" type: typeEnumerated code: 'ascd'];
    return constantObj;
}

+ (FNConstant *)creationDateColumn {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"creationDateColumn" type: typeEnumerated code: 'elsc'];
    return constantObj;
}

+ (FNConstant *)groupView {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"groupView" type: typeEnumerated code: 'grvw'];
    return constantObj;
}

+ (FNConstant *)iconView {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"iconView" type: typeEnumerated code: 'icnv'];
    return constantObj;
}

+ (FNConstant *)kind {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"kind" type: typeEnumerated code: 'kind'];
    return constantObj;
}

+ (FNConstant *)kindColumn {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"kindColumn" type: typeEnumerated code: 'elsk'];
    return constantObj;
}

+ (FNConstant *)labelColumn {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"labelColumn" type: typeEnumerated code: 'elsl'];
    return constantObj;
}

+ (FNConstant *)labelIndex {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"labelIndex" type: typeEnumerated code: 'labi'];
    return constantObj;
}

+ (FNConstant *)large {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"large" type: typeEnumerated code: 'lgic'];
    return constantObj;
}

+ (FNConstant *)largeIcon {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"largeIcon" type: typeEnumerated code: 'lgic'];
    return constantObj;
}

+ (FNConstant *)listView {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"listView" type: typeEnumerated code: 'lsvw'];
    return constantObj;
}

+ (FNConstant *)mini {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"mini" type: typeEnumerated code: 'miic'];
    return constantObj;
}

+ (FNConstant *)modificationDate {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"modificationDate" type: typeEnumerated code: 'asmo'];
    return constantObj;
}

+ (FNConstant *)modificationDateColumn {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"modificationDateColumn" type: typeEnumerated code: 'elsm'];
    return constantObj;
}

+ (FNConstant *)name {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"name" type: typeEnumerated code: 'pnam'];
    return constantObj;
}

+ (FNConstant *)nameColumn {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"nameColumn" type: typeEnumerated code: 'elsn'];
    return constantObj;
}

+ (FNConstant *)none {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"none" type: typeEnumerated code: 'none'];
    return constantObj;
}

+ (FNConstant *)normal {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"normal" type: typeEnumerated code: 'snrm'];
    return constantObj;
}

+ (FNConstant *)notArranged {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"notArranged" type: typeEnumerated code: 'narr'];
    return constantObj;
}

+ (FNConstant *)readOnly {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"readOnly" type: typeEnumerated code: 'read'];
    return constantObj;
}

+ (FNConstant *)readWrite {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"readWrite" type: typeEnumerated code: 'rdwr'];
    return constantObj;
}

+ (FNConstant *)reversed {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"reversed" type: typeEnumerated code: 'srvs'];
    return constantObj;
}

+ (FNConstant *)right {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"right" type: typeEnumerated code: 'lrgt'];
    return constantObj;
}

+ (FNConstant *)size {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"size" type: typeEnumerated code: 'phys'];
    return constantObj;
}

+ (FNConstant *)sizeColumn {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"sizeColumn" type: typeEnumerated code: 'elss'];
    return constantObj;
}

+ (FNConstant *)small {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"small" type: typeEnumerated code: 'smic'];
    return constantObj;
}

+ (FNConstant *)smallIcon {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"smallIcon" type: typeEnumerated code: 'smic'];
    return constantObj;
}

+ (FNConstant *)snapToGrid {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"snapToGrid" type: typeEnumerated code: 'grda'];
    return constantObj;
}

+ (FNConstant *)unknownFormat {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"unknownFormat" type: typeEnumerated code: 'df??'];
    return constantObj;
}

+ (FNConstant *)versionColumn {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"versionColumn" type: typeEnumerated code: 'elsv'];
    return constantObj;
}

+ (FNConstant *)version_ {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"version_" type: typeEnumerated code: 'vers'];
    return constantObj;
}

+ (FNConstant *)writeOnly {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"writeOnly" type: typeEnumerated code: 'writ'];
    return constantObj;
}


/* Types and properties */

+ (FNConstant *)FinderPreferences {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"FinderPreferences" type: typeType code: 'pfrp'];
    return constantObj;
}

+ (FNConstant *)FinderWindow {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"FinderWindow" type: typeType code: 'brow'];
    return constantObj;
}

+ (FNConstant *)URL {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"URL" type: typeType code: 'pURL'];
    return constantObj;
}

+ (FNConstant *)acceptsHighLevelEvents {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"acceptsHighLevelEvents" type: typeType code: 'isab'];
    return constantObj;
}

+ (FNConstant *)acceptsRemoteEvents {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"acceptsRemoteEvents" type: typeType code: 'revt'];
    return constantObj;
}

+ (FNConstant *)aliasFile {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"aliasFile" type: typeType code: 'alia'];
    return constantObj;
}

+ (FNConstant *)aliasList {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"aliasList" type: typeType code: 'alst'];
    return constantObj;
}

+ (FNConstant *)allNameExtensionsShowing {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"allNameExtensionsShowing" type: typeType code: 'psnx'];
    return constantObj;
}

+ (FNConstant *)application {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"application" type: typeType code: 'capp'];
    return constantObj;
}

+ (FNConstant *)applicationFile {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"applicationFile" type: typeType code: 'appf'];
    return constantObj;
}

+ (FNConstant *)applicationProcess {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"applicationProcess" type: typeType code: 'pcap'];
    return constantObj;
}

+ (FNConstant *)arrangement {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"arrangement" type: typeType code: 'iarr'];
    return constantObj;
}

+ (FNConstant *)backgroundColor {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"backgroundColor" type: typeType code: 'colr'];
    return constantObj;
}

+ (FNConstant *)backgroundPicture {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"backgroundPicture" type: typeType code: 'ibkg'];
    return constantObj;
}

+ (FNConstant *)bounds {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"bounds" type: typeType code: 'pbnd'];
    return constantObj;
}

+ (FNConstant *)calculatesFolderSizes {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"calculatesFolderSizes" type: typeType code: 'sfsz'];
    return constantObj;
}

+ (FNConstant *)capacity {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"capacity" type: typeType code: 'capa'];
    return constantObj;
}

+ (FNConstant *)class_ {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"class_" type: typeType code: 'pcls'];
    return constantObj;
}

+ (FNConstant *)clipboard {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"clipboard" type: typeType code: 'pcli'];
    return constantObj;
}

+ (FNConstant *)clipping {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"clipping" type: typeType code: 'clpf'];
    return constantObj;
}

+ (FNConstant *)clippingWindow {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"clippingWindow" type: typeType code: 'lwnd'];
    return constantObj;
}

+ (FNConstant *)closeable {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"closeable" type: typeType code: 'hclb'];
    return constantObj;
}

+ (FNConstant *)collapsed {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"collapsed" type: typeType code: 'wshd'];
    return constantObj;
}

+ (FNConstant *)color {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"color" type: typeType code: 'colr'];
    return constantObj;
}

+ (FNConstant *)column {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"column" type: typeType code: 'lvcl'];
    return constantObj;
}

+ (FNConstant *)columnViewOptions {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"columnViewOptions" type: typeType code: 'cvop'];
    return constantObj;
}

+ (FNConstant *)completelyExpanded {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"completelyExpanded" type: typeType code: 'pexc'];
    return constantObj;
}

+ (FNConstant *)computerContainer {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"computerContainer" type: typeType code: 'pcmp'];
    return constantObj;
}

+ (FNConstant *)computerObject {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"computerObject" type: typeType code: 'ccmp'];
    return constantObj;
}

+ (FNConstant *)container {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"container" type: typeType code: 'ctnr'];
    return constantObj;
}

+ (FNConstant *)containerWindow {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"containerWindow" type: typeType code: 'cwnd'];
    return constantObj;
}

+ (FNConstant *)creatorType {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"creatorType" type: typeType code: 'fcrt'];
    return constantObj;
}

+ (FNConstant *)currentPanel {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"currentPanel" type: typeType code: 'panl'];
    return constantObj;
}

+ (FNConstant *)currentView {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"currentView" type: typeType code: 'pvew'];
    return constantObj;
}

+ (FNConstant *)delayBeforeSpringing {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"delayBeforeSpringing" type: typeType code: 'dela'];
    return constantObj;
}

+ (FNConstant *)description_ {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"description_" type: typeType code: 'dscr'];
    return constantObj;
}

+ (FNConstant *)deskAccessoryFile {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"deskAccessoryFile" type: typeType code: 'dafi'];
    return constantObj;
}

+ (FNConstant *)deskAccessoryProcess {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"deskAccessoryProcess" type: typeType code: 'pcda'];
    return constantObj;
}

+ (FNConstant *)desktop {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"desktop" type: typeType code: 'desk'];
    return constantObj;
}

+ (FNConstant *)desktopObject {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"desktopObject" type: typeType code: 'cdsk'];
    return constantObj;
}

+ (FNConstant *)desktopPicture {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"desktopPicture" type: typeType code: 'dpic'];
    return constantObj;
}

+ (FNConstant *)desktopPosition {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"desktopPosition" type: typeType code: 'dpos'];
    return constantObj;
}

+ (FNConstant *)desktopShowsConnectedServers {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"desktopShowsConnectedServers" type: typeType code: 'pdsv'];
    return constantObj;
}

+ (FNConstant *)desktopShowsHardDisks {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"desktopShowsHardDisks" type: typeType code: 'pdhd'];
    return constantObj;
}

+ (FNConstant *)desktopShowsRemovableMedia {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"desktopShowsRemovableMedia" type: typeType code: 'pdrm'];
    return constantObj;
}

+ (FNConstant *)desktopWindow {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"desktopWindow" type: typeType code: 'dktw'];
    return constantObj;
}

+ (FNConstant *)disclosesPreviewPane {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"disclosesPreviewPane" type: typeType code: 'dspr'];
    return constantObj;
}

+ (FNConstant *)disk {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"disk" type: typeType code: 'cdis'];
    return constantObj;
}

+ (FNConstant *)displayedName {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"displayedName" type: typeType code: 'dnam'];
    return constantObj;
}

+ (FNConstant *)documentFile {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"documentFile" type: typeType code: 'docf'];
    return constantObj;
}

+ (FNConstant *)ejectable {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"ejectable" type: typeType code: 'isej'];
    return constantObj;
}

+ (FNConstant *)entireContents {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"entireContents" type: typeType code: 'ects'];
    return constantObj;
}

+ (FNConstant *)everyonesPrivileges {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"everyonesPrivileges" type: typeType code: 'gstp'];
    return constantObj;
}

+ (FNConstant *)expandable {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"expandable" type: typeType code: 'pexa'];
    return constantObj;
}

+ (FNConstant *)expanded {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"expanded" type: typeType code: 'pexp'];
    return constantObj;
}

+ (FNConstant *)extensionHidden {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"extensionHidden" type: typeType code: 'hidx'];
    return constantObj;
}

+ (FNConstant *)file {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"file" type: typeType code: 'file'];
    return constantObj;
}

+ (FNConstant *)fileType {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"fileType" type: typeType code: 'asty'];
    return constantObj;
}

+ (FNConstant *)floating {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"floating" type: typeType code: 'isfl'];
    return constantObj;
}

+ (FNConstant *)folder {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"folder" type: typeType code: 'cfol'];
    return constantObj;
}

+ (FNConstant *)foldersOpenInNewWindows {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"foldersOpenInNewWindows" type: typeType code: 'ponw'];
    return constantObj;
}

+ (FNConstant *)foldersSpringOpen {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"foldersSpringOpen" type: typeType code: 'sprg'];
    return constantObj;
}

+ (FNConstant *)format {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"format" type: typeType code: 'dfmt'];
    return constantObj;
}

+ (FNConstant *)freeSpace {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"freeSpace" type: typeType code: 'frsp'];
    return constantObj;
}

+ (FNConstant *)frontmost {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"frontmost" type: typeType code: 'pisf'];
    return constantObj;
}

+ (FNConstant *)group {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"group" type: typeType code: 'sgrp'];
    return constantObj;
}

+ (FNConstant *)groupPrivileges {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"groupPrivileges" type: typeType code: 'gppr'];
    return constantObj;
}

+ (FNConstant *)hasScriptingTerminology {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"hasScriptingTerminology" type: typeType code: 'hscr'];
    return constantObj;
}

+ (FNConstant *)home {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"home" type: typeType code: 'home'];
    return constantObj;
}

+ (FNConstant *)icon {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"icon" type: typeType code: 'iimg'];
    return constantObj;
}

+ (FNConstant *)iconFamily {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"iconFamily" type: typeType code: 'ifam'];
    return constantObj;
}

+ (FNConstant *)iconSize {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"iconSize" type: typeType code: 'lvis'];
    return constantObj;
}

+ (FNConstant *)iconViewOptions {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"iconViewOptions" type: typeType code: 'icop'];
    return constantObj;
}

+ (FNConstant *)id_ {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"id_" type: typeType code: 'ID  '];
    return constantObj;
}

+ (FNConstant *)ignorePrivileges {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"ignorePrivileges" type: typeType code: 'igpr'];
    return constantObj;
}

+ (FNConstant *)index {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"index" type: typeType code: 'pidx'];
    return constantObj;
}

+ (FNConstant *)informationWindow {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"informationWindow" type: typeType code: 'iwnd'];
    return constantObj;
}

+ (FNConstant *)insertionLocation {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"insertionLocation" type: typeType code: 'pins'];
    return constantObj;
}

+ (FNConstant *)internetLocationFile {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"internetLocationFile" type: typeType code: 'inlf'];
    return constantObj;
}

+ (FNConstant *)item {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"item" type: typeType code: 'cobj'];
    return constantObj;
}

+ (FNConstant *)journalingEnabled {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"journalingEnabled" type: typeType code: 'Jrnl'];
    return constantObj;
}

+ (FNConstant *)label {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"label" type: typeType code: 'clbl'];
    return constantObj;
}

+ (FNConstant *)labelPosition {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"labelPosition" type: typeType code: 'lpos'];
    return constantObj;
}

+ (FNConstant *)large32BitIcon {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"large32BitIcon" type: typeType code: 'il32'];
    return constantObj;
}

+ (FNConstant *)large4BitIcon {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"large4BitIcon" type: typeType code: 'icl4'];
    return constantObj;
}

+ (FNConstant *)large8BitIcon {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"large8BitIcon" type: typeType code: 'icl8'];
    return constantObj;
}

+ (FNConstant *)large8BitMask {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"large8BitMask" type: typeType code: 'l8mk'];
    return constantObj;
}

+ (FNConstant *)largeMonochromeIconAndMask {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"largeMonochromeIconAndMask" type: typeType code: 'ICN#'];
    return constantObj;
}

+ (FNConstant *)listViewOptions {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"listViewOptions" type: typeType code: 'lvop'];
    return constantObj;
}

+ (FNConstant *)localVolume {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"localVolume" type: typeType code: 'isrv'];
    return constantObj;
}

+ (FNConstant *)location {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"location" type: typeType code: 'iloc'];
    return constantObj;
}

+ (FNConstant *)locked {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"locked" type: typeType code: 'aslk'];
    return constantObj;
}

+ (FNConstant *)maximumWidth {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"maximumWidth" type: typeType code: 'clwm'];
    return constantObj;
}

+ (FNConstant *)minimumSize {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"minimumSize" type: typeType code: 'mprt'];
    return constantObj;
}

+ (FNConstant *)minimumWidth {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"minimumWidth" type: typeType code: 'clwn'];
    return constantObj;
}

+ (FNConstant *)modal {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"modal" type: typeType code: 'pmod'];
    return constantObj;
}

+ (FNConstant *)nameExtension {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"nameExtension" type: typeType code: 'nmxt'];
    return constantObj;
}

+ (FNConstant *)newWindowTarget {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"newWindowTarget" type: typeType code: 'pnwt'];
    return constantObj;
}

+ (FNConstant *)newWindowsOpenInColumnView {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"newWindowsOpenInColumnView" type: typeType code: 'pocv'];
    return constantObj;
}

+ (FNConstant *)opensInClassic {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"opensInClassic" type: typeType code: 'Clsc'];
    return constantObj;
}

+ (FNConstant *)originalItem {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"originalItem" type: typeType code: 'orig'];
    return constantObj;
}

+ (FNConstant *)owner {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"owner" type: typeType code: 'sown'];
    return constantObj;
}

+ (FNConstant *)ownerPrivileges {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"ownerPrivileges" type: typeType code: 'ownr'];
    return constantObj;
}

+ (FNConstant *)package {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"package" type: typeType code: 'pack'];
    return constantObj;
}

+ (FNConstant *)partitionSpaceUsed {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"partitionSpaceUsed" type: typeType code: 'pusd'];
    return constantObj;
}

+ (FNConstant *)physicalSize {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"physicalSize" type: typeType code: 'phys'];
    return constantObj;
}

+ (FNConstant *)position {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"position" type: typeType code: 'posn'];
    return constantObj;
}

+ (FNConstant *)preferences {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"preferences" type: typeType code: 'cprf'];
    return constantObj;
}

+ (FNConstant *)preferencesWindow {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"preferencesWindow" type: typeType code: 'pwnd'];
    return constantObj;
}

+ (FNConstant *)preferredSize {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"preferredSize" type: typeType code: 'appt'];
    return constantObj;
}

+ (FNConstant *)process {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"process" type: typeType code: 'prcs'];
    return constantObj;
}

+ (FNConstant *)productVersion {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"productVersion" type: typeType code: 'ver2'];
    return constantObj;
}

+ (FNConstant *)properties {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"properties" type: typeType code: 'pALL'];
    return constantObj;
}

+ (FNConstant *)resizable {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"resizable" type: typeType code: 'prsz'];
    return constantObj;
}

+ (FNConstant *)selection {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"selection" type: typeType code: 'sele'];
    return constantObj;
}

+ (FNConstant *)showsIcon {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"showsIcon" type: typeType code: 'shic'];
    return constantObj;
}

+ (FNConstant *)showsIconPreview {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"showsIconPreview" type: typeType code: 'prvw'];
    return constantObj;
}

+ (FNConstant *)showsItemInfo {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"showsItemInfo" type: typeType code: 'mnfo'];
    return constantObj;
}

+ (FNConstant *)showsPreviewColumn {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"showsPreviewColumn" type: typeType code: 'shpr'];
    return constantObj;
}

+ (FNConstant *)sidebarWidth {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"sidebarWidth" type: typeType code: 'sbwi'];
    return constantObj;
}

+ (FNConstant *)small32BitIcon {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"small32BitIcon" type: typeType code: 'is32'];
    return constantObj;
}

+ (FNConstant *)small4BitIcon {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"small4BitIcon" type: typeType code: 'ics4'];
    return constantObj;
}

+ (FNConstant *)small8BitIcon {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"small8BitIcon" type: typeType code: 'ics8'];
    return constantObj;
}

+ (FNConstant *)small8BitMask {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"small8BitMask" type: typeType code: 'ics8'];
    return constantObj;
}

+ (FNConstant *)smallMonochromeIconAndMask {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"smallMonochromeIconAndMask" type: typeType code: 'ics#'];
    return constantObj;
}

+ (FNConstant *)sortColumn {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"sortColumn" type: typeType code: 'srtc'];
    return constantObj;
}

+ (FNConstant *)sortDirection {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"sortDirection" type: typeType code: 'sord'];
    return constantObj;
}

+ (FNConstant *)startup {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"startup" type: typeType code: 'istd'];
    return constantObj;
}

+ (FNConstant *)startupDisk {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"startupDisk" type: typeType code: 'sdsk'];
    return constantObj;
}

+ (FNConstant *)stationery {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"stationery" type: typeType code: 'pspd'];
    return constantObj;
}

+ (FNConstant *)statusbarVisible {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"statusbarVisible" type: typeType code: 'stvi'];
    return constantObj;
}

+ (FNConstant *)suggestedSize {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"suggestedSize" type: typeType code: 'sprt'];
    return constantObj;
}

+ (FNConstant *)target {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"target" type: typeType code: 'fvtg'];
    return constantObj;
}

+ (FNConstant *)textSize {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"textSize" type: typeType code: 'fsiz'];
    return constantObj;
}

+ (FNConstant *)titled {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"titled" type: typeType code: 'ptit'];
    return constantObj;
}

+ (FNConstant *)toolbarVisible {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"toolbarVisible" type: typeType code: 'tbvi'];
    return constantObj;
}

+ (FNConstant *)totalPartitionSize {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"totalPartitionSize" type: typeType code: 'appt'];
    return constantObj;
}

+ (FNConstant *)trash {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"trash" type: typeType code: 'trsh'];
    return constantObj;
}

+ (FNConstant *)trashObject {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"trashObject" type: typeType code: 'ctrs'];
    return constantObj;
}

+ (FNConstant *)usesRelativeDates {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"usesRelativeDates" type: typeType code: 'urdt'];
    return constantObj;
}

+ (FNConstant *)visible {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"visible" type: typeType code: 'pvis'];
    return constantObj;
}

+ (FNConstant *)warnsBeforeEmptying {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"warnsBeforeEmptying" type: typeType code: 'warn'];
    return constantObj;
}

+ (FNConstant *)width {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"width" type: typeType code: 'clwd'];
    return constantObj;
}

+ (FNConstant *)window {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"window" type: typeType code: 'cwin'];
    return constantObj;
}

+ (FNConstant *)zoomable {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"zoomable" type: typeType code: 'iszm'];
    return constantObj;
}

+ (FNConstant *)zoomed {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"zoomed" type: typeType code: 'pzum'];
    return constantObj;
}

+ (FNConstant *)zoomedFullSize {
    static FNConstant *constantObj;
    if (!constantObj)
        constantObj = [FNConstant constantWithName: @"zoomedFullSize" type: typeType code: 'zumf'];
    return constantObj;
}

@end


