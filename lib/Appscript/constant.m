//
//  constant.m
//  appscript
//
//  Copyright (C) 2007 HAS
//

#import "constant.h"


/**********************************************************************/


@implementation ASConstant

+ (id)constantWithName:(NSString *)name_ type:(DescType)type_ code:(OSType)code_ {
    id constantObj;
    NSAppleEventDescriptor *desc_;
    
	desc_ = [[NSAppleEventDescriptor alloc] initWithDescriptorType: type_
															 bytes: &code_
															length: sizeof(code_)];
	constantObj =  [[self alloc] initWithName: name_ descriptor: desc_];
	[desc_ release];
	return constantObj;
}

- (id)initWithName:(NSString *)name_ descriptor:(NSAppleEventDescriptor *)desc_ {
	self = [super init];
	if (!self) return self;
	name = [name_ retain];
	desc = [desc_ retain];
	return self;
}

- (void)dealloc {
	[name release];
	[desc release];
	[super dealloc];
}

- (NSString *)description {
	return [NSString stringWithFormat: @"[%@ %@]", [self class], name];
}

// TO DO: hash, isEqual? note: these shouldn't be necessary as [long as] objects are cached when created and subsequently reused (glues do this; ASB API should do it too), and copying them returns the original object

- (id)copyWithZone:(NSZone *)zone {
	return [self retain]; // TO DO: check this is right
}

- (NSString *)AS_name {
	return name;
}

- (OSType)AS_code {
	return [desc typeCodeValue];
}

- (NSAppleEventDescriptor *)AS_packSelf:(id)codecs {
	return desc;
}

/***********************************/
// Apple Event Manager-defined types and enumerators


+ (id)constantWithCode:(OSType)code_ {
    switch (code_) {
        case 'rmte': return [self applicationResponses];
        case 'ask ': return [self ask];
        case 'case': return [self case_];
        case 'diac': return [self diacriticals];
        case 'expa': return [self expansion];
        case 'hyph': return [self hyphens];
        case 'no  ': return [self no];
        case 'nume': return [self numericStrings];
        case 'punc': return [self punctuation];
        case 'whit': return [self whitespace];
        case 'yes ': return [self yes];
        case 'apr ': return [self April];
        case 'aug ': return [self August];
        case 'dec ': return [self December];
        case 'EPS ': return [self EPSPicture];
        case 'feb ': return [self February];
        case 'fri ': return [self Friday];
        case 'GIFf': return [self GIFPicture];
        case 'JPEG': return [self JPEGPicture];
        case 'jan ': return [self January];
        case 'jul ': return [self July];
        case 'jun ': return [self June];
        case 'mar ': return [self March];
        case 'may ': return [self May];
        case 'mon ': return [self Monday];
        case 'nov ': return [self November];
        case 'oct ': return [self October];
        case 'PICT': return [self PICTPicture];
        case 'tr16': return [self RGB16Color];
        case 'tr96': return [self RGB96Color];
        case 'cRGB': return [self RGBColor];
        case 'sat ': return [self Saturday];
        case 'sep ': return [self September];
        case 'sun ': return [self Sunday];
        case 'TIFF': return [self TIFFPicture];
        case 'thu ': return [self Thursday];
        case 'tue ': return [self Tuesday];
        case 'wed ': return [self Wednesday];
        case 'alis': return [self alias];
        case '****': return [self anything];
        case 'bund': return [self applicationBundleID];
        case 'sign': return [self applicationSignature];
        case 'aprl': return [self applicationURL];
        case 'best': return [self best];
        case 'bool': return [self boolean];
        case 'qdrt': return [self boundingRectangle];
        case 'cmtr': return [self centimeters];
        case 'pcls': return [self class_];
        case 'gcli': return [self classInfo];
        case 'clrt': return [self colorTable];
        case 'ccmt': return [self cubicCentimeters];
        case 'cfet': return [self cubicFeet];
        case 'cuin': return [self cubicInches];
        case 'cmet': return [self cubicMeters];
        case 'cyrd': return [self cubicYards];
        case 'tdas': return [self dashStyle];
        case 'rdat': return [self data];
        case 'ldt ': return [self date];
        case 'decm': return [self decimalStruct];
        case 'degc': return [self degreesCelsius];
        case 'degf': return [self degreesFahrenheit];
        case 'degk': return [self degreesKelvin];
        case 'comp': return [self doubleInteger];
        case 'elin': return [self elementInfo];
        case 'encs': return [self encodedString];
        case 'enum': return [self enumerator];
        case 'evin': return [self eventInfo];
        case 'exte': return [self extendedFloat];
        case 'feet': return [self feet];
        case 'fsrf': return [self fileRef];
        case 'fss ': return [self fileSpecification];
        case 'furl': return [self fileURL];
        case 'fixd': return [self fixed];
        case 'fpnt': return [self fixedPoint];
        case 'frct': return [self fixedRectangle];
        case 'doub': return [self float_];
        case 'ldbl': return [self float128bit];
        case 'galn': return [self gallons];
        case 'gram': return [self grams];
        case 'cgtx': return [self graphicText];
        case 'inch': return [self inches];
        case 'long': return [self integer];
        case 'itxt': return [self internationalText];
        case 'intl': return [self internationalWritingCode];
        case 'kpid': return [self kernelProcessID];
        case 'kgrm': return [self kilograms];
        case 'kmtr': return [self kilometers];
        case 'list': return [self list];
        case 'litr': return [self liters];
        case 'insl': return [self locationReference];
        case 'lfxd': return [self longFixed];
        case 'lfpt': return [self longFixedPoint];
        case 'lfrc': return [self longFixedRectangle];
        case 'lpnt': return [self longPoint];
        case 'lrct': return [self longRectangle];
        case 'port': return [self machPort];
        case 'mach': return [self machine];
        case 'mLoc': return [self machineLocation];
        case 'metr': return [self meters];
        case 'mile': return [self miles];
        case 'msng': return [self missingValue];
        case 'null': return [self null];
        case 'ozs ': return [self ounces];
        case 'pmin': return [self parameterInfo];
        case 'tpmm': return [self pixelMapRecord];
        case 'QDpt': return [self point];
        case 'lbs ': return [self pounds];
        case 'psn ': return [self processSerialNumber];
        case 'prop': return [self property];
        case 'pinf': return [self propertyInfo];
        case 'qrts': return [self quarts];
        case 'reco': return [self record];
        case 'obj ': return [self reference];
        case 'trot': return [self rotation];
        case 'scpt': return [self script];
        case 'sing': return [self shortFloat];
        case 'shor': return [self shortInteger];
        case 'sqft': return [self squareFeet];
        case 'sqkm': return [self squareKilometers];
        case 'sqrm': return [self squareMeters];
        case 'sqmi': return [self squareMiles];
        case 'sqyd': return [self squareYards];
        case 'TEXT': return [self string];
        case 'styl': return [self styledClipboardText];
        case 'STXT': return [self styledText];
        case 'suin': return [self suiteInfo];
        case 'tsty': return [self textStyleInfo];
        case 'type': return [self typeClass];
        case 'utxt': return [self unicodeText];
        case 'magn': return [self unsignedInteger];
        case 'ut16': return [self utf16Text];
        case 'utf8': return [self utf8Text];
        case 'vers': return [self version];
        case 'psct': return [self writingCode];
        case 'yard': return [self yards];
        default: return nil;
    }
}


/* Enumerators */

+ (ASConstant *)applicationResponses {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"applicationResponses" type: typeEnumerated code: 'rmte'];
    return constantObj;
}

+ (ASConstant *)ask {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"ask" type: typeEnumerated code: 'ask '];
    return constantObj;
}

+ (ASConstant *)case_ {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"case_" type: typeEnumerated code: 'case'];
    return constantObj;
}

+ (ASConstant *)diacriticals {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"diacriticals" type: typeEnumerated code: 'diac'];
    return constantObj;
}

+ (ASConstant *)expansion {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"expansion" type: typeEnumerated code: 'expa'];
    return constantObj;
}

+ (ASConstant *)hyphens {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"hyphens" type: typeEnumerated code: 'hyph'];
    return constantObj;
}

+ (ASConstant *)no {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"no" type: typeEnumerated code: 'no  '];
    return constantObj;
}

+ (ASConstant *)numericStrings {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"numericStrings" type: typeEnumerated code: 'nume'];
    return constantObj;
}

+ (ASConstant *)punctuation {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"punctuation" type: typeEnumerated code: 'punc'];
    return constantObj;
}

+ (ASConstant *)whitespace {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"whitespace" type: typeEnumerated code: 'whit'];
    return constantObj;
}

+ (ASConstant *)yes {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"yes" type: typeEnumerated code: 'yes '];
    return constantObj;
}


/* Types and properties */

+ (ASConstant *)April {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"April" type: typeType code: 'apr '];
    return constantObj;
}

+ (ASConstant *)August {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"August" type: typeType code: 'aug '];
    return constantObj;
}

+ (ASConstant *)December {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"December" type: typeType code: 'dec '];
    return constantObj;
}

+ (ASConstant *)EPSPicture {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"EPSPicture" type: typeType code: 'EPS '];
    return constantObj;
}

+ (ASConstant *)February {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"February" type: typeType code: 'feb '];
    return constantObj;
}

+ (ASConstant *)Friday {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"Friday" type: typeType code: 'fri '];
    return constantObj;
}

+ (ASConstant *)GIFPicture {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"GIFPicture" type: typeType code: 'GIFf'];
    return constantObj;
}

+ (ASConstant *)JPEGPicture {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"JPEGPicture" type: typeType code: 'JPEG'];
    return constantObj;
}

+ (ASConstant *)January {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"January" type: typeType code: 'jan '];
    return constantObj;
}

+ (ASConstant *)July {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"July" type: typeType code: 'jul '];
    return constantObj;
}

+ (ASConstant *)June {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"June" type: typeType code: 'jun '];
    return constantObj;
}

+ (ASConstant *)March {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"March" type: typeType code: 'mar '];
    return constantObj;
}

+ (ASConstant *)May {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"May" type: typeType code: 'may '];
    return constantObj;
}

+ (ASConstant *)Monday {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"Monday" type: typeType code: 'mon '];
    return constantObj;
}

+ (ASConstant *)November {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"November" type: typeType code: 'nov '];
    return constantObj;
}

+ (ASConstant *)October {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"October" type: typeType code: 'oct '];
    return constantObj;
}

+ (ASConstant *)PICTPicture {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"PICTPicture" type: typeType code: 'PICT'];
    return constantObj;
}

+ (ASConstant *)RGB16Color {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"RGB16Color" type: typeType code: 'tr16'];
    return constantObj;
}

+ (ASConstant *)RGB96Color {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"RGB96Color" type: typeType code: 'tr96'];
    return constantObj;
}

+ (ASConstant *)RGBColor {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"RGBColor" type: typeType code: 'cRGB'];
    return constantObj;
}

+ (ASConstant *)Saturday {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"Saturday" type: typeType code: 'sat '];
    return constantObj;
}

+ (ASConstant *)September {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"September" type: typeType code: 'sep '];
    return constantObj;
}

+ (ASConstant *)Sunday {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"Sunday" type: typeType code: 'sun '];
    return constantObj;
}

+ (ASConstant *)TIFFPicture {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"TIFFPicture" type: typeType code: 'TIFF'];
    return constantObj;
}

+ (ASConstant *)Thursday {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"Thursday" type: typeType code: 'thu '];
    return constantObj;
}

+ (ASConstant *)Tuesday {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"Tuesday" type: typeType code: 'tue '];
    return constantObj;
}

+ (ASConstant *)Wednesday {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"Wednesday" type: typeType code: 'wed '];
    return constantObj;
}

+ (ASConstant *)alias {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"alias" type: typeType code: 'alis'];
    return constantObj;
}

+ (ASConstant *)anything {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"anything" type: typeType code: '****'];
    return constantObj;
}

+ (ASConstant *)applicationBundleID {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"applicationBundleID" type: typeType code: 'bund'];
    return constantObj;
}

+ (ASConstant *)applicationSignature {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"applicationSignature" type: typeType code: 'sign'];
    return constantObj;
}

+ (ASConstant *)applicationURL {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"applicationURL" type: typeType code: 'aprl'];
    return constantObj;
}

+ (ASConstant *)best {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"best" type: typeType code: 'best'];
    return constantObj;
}

+ (ASConstant *)boolean {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"boolean" type: typeType code: 'bool'];
    return constantObj;
}

+ (ASConstant *)boundingRectangle {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"boundingRectangle" type: typeType code: 'qdrt'];
    return constantObj;
}

+ (ASConstant *)centimeters {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"centimeters" type: typeType code: 'cmtr'];
    return constantObj;
}

+ (ASConstant *)class_ {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"class_" type: typeType code: 'pcls'];
    return constantObj;
}

+ (ASConstant *)classInfo {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"classInfo" type: typeType code: 'gcli'];
    return constantObj;
}

+ (ASConstant *)colorTable {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"colorTable" type: typeType code: 'clrt'];
    return constantObj;
}

+ (ASConstant *)cubicCentimeters {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"cubicCentimeters" type: typeType code: 'ccmt'];
    return constantObj;
}

+ (ASConstant *)cubicFeet {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"cubicFeet" type: typeType code: 'cfet'];
    return constantObj;
}

+ (ASConstant *)cubicInches {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"cubicInches" type: typeType code: 'cuin'];
    return constantObj;
}

+ (ASConstant *)cubicMeters {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"cubicMeters" type: typeType code: 'cmet'];
    return constantObj;
}

+ (ASConstant *)cubicYards {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"cubicYards" type: typeType code: 'cyrd'];
    return constantObj;
}

+ (ASConstant *)dashStyle {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"dashStyle" type: typeType code: 'tdas'];
    return constantObj;
}

+ (ASConstant *)data {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"data" type: typeType code: 'rdat'];
    return constantObj;
}

+ (ASConstant *)date {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"date" type: typeType code: 'ldt '];
    return constantObj;
}

+ (ASConstant *)decimalStruct {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"decimalStruct" type: typeType code: 'decm'];
    return constantObj;
}

+ (ASConstant *)degreesCelsius {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"degreesCelsius" type: typeType code: 'degc'];
    return constantObj;
}

+ (ASConstant *)degreesFahrenheit {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"degreesFahrenheit" type: typeType code: 'degf'];
    return constantObj;
}

+ (ASConstant *)degreesKelvin {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"degreesKelvin" type: typeType code: 'degk'];
    return constantObj;
}

+ (ASConstant *)doubleInteger {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"doubleInteger" type: typeType code: 'comp'];
    return constantObj;
}

+ (ASConstant *)elementInfo {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"elementInfo" type: typeType code: 'elin'];
    return constantObj;
}

+ (ASConstant *)encodedString {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"encodedString" type: typeType code: 'encs'];
    return constantObj;
}

+ (ASConstant *)enumerator {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"enumerator" type: typeType code: 'enum'];
    return constantObj;
}

+ (ASConstant *)eventInfo {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"eventInfo" type: typeType code: 'evin'];
    return constantObj;
}

+ (ASConstant *)extendedFloat {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"extendedFloat" type: typeType code: 'exte'];
    return constantObj;
}

+ (ASConstant *)feet {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"feet" type: typeType code: 'feet'];
    return constantObj;
}

+ (ASConstant *)fileRef {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"fileRef" type: typeType code: 'fsrf'];
    return constantObj;
}

+ (ASConstant *)fileSpecification {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"fileSpecification" type: typeType code: 'fss '];
    return constantObj;
}

+ (ASConstant *)fileURL {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"fileURL" type: typeType code: 'furl'];
    return constantObj;
}

+ (ASConstant *)fixed {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"fixed" type: typeType code: 'fixd'];
    return constantObj;
}

+ (ASConstant *)fixedPoint {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"fixedPoint" type: typeType code: 'fpnt'];
    return constantObj;
}

+ (ASConstant *)fixedRectangle {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"fixedRectangle" type: typeType code: 'frct'];
    return constantObj;
}

+ (ASConstant *)float_ {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"float_" type: typeType code: 'doub'];
    return constantObj;
}

+ (ASConstant *)float128bit {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"float128bit" type: typeType code: 'ldbl'];
    return constantObj;
}

+ (ASConstant *)gallons {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"gallons" type: typeType code: 'galn'];
    return constantObj;
}

+ (ASConstant *)grams {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"grams" type: typeType code: 'gram'];
    return constantObj;
}

+ (ASConstant *)graphicText {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"graphicText" type: typeType code: 'cgtx'];
    return constantObj;
}

+ (ASConstant *)inches {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"inches" type: typeType code: 'inch'];
    return constantObj;
}

+ (ASConstant *)integer {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"integer" type: typeType code: 'long'];
    return constantObj;
}

+ (ASConstant *)internationalText {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"internationalText" type: typeType code: 'itxt'];
    return constantObj;
}

+ (ASConstant *)internationalWritingCode {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"internationalWritingCode" type: typeType code: 'intl'];
    return constantObj;
}

+ (ASConstant *)kernelProcessID {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"kernelProcessID" type: typeType code: 'kpid'];
    return constantObj;
}

+ (ASConstant *)kilograms {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"kilograms" type: typeType code: 'kgrm'];
    return constantObj;
}

+ (ASConstant *)kilometers {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"kilometers" type: typeType code: 'kmtr'];
    return constantObj;
}

+ (ASConstant *)list {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"list" type: typeType code: 'list'];
    return constantObj;
}

+ (ASConstant *)liters {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"liters" type: typeType code: 'litr'];
    return constantObj;
}

+ (ASConstant *)locationReference {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"locationReference" type: typeType code: 'insl'];
    return constantObj;
}

+ (ASConstant *)longFixed {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"longFixed" type: typeType code: 'lfxd'];
    return constantObj;
}

+ (ASConstant *)longFixedPoint {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"longFixedPoint" type: typeType code: 'lfpt'];
    return constantObj;
}

+ (ASConstant *)longFixedRectangle {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"longFixedRectangle" type: typeType code: 'lfrc'];
    return constantObj;
}

+ (ASConstant *)longPoint {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"longPoint" type: typeType code: 'lpnt'];
    return constantObj;
}

+ (ASConstant *)longRectangle {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"longRectangle" type: typeType code: 'lrct'];
    return constantObj;
}

+ (ASConstant *)machPort {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"machPort" type: typeType code: 'port'];
    return constantObj;
}

+ (ASConstant *)machine {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"machine" type: typeType code: 'mach'];
    return constantObj;
}

+ (ASConstant *)machineLocation {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"machineLocation" type: typeType code: 'mLoc'];
    return constantObj;
}

+ (ASConstant *)meters {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"meters" type: typeType code: 'metr'];
    return constantObj;
}

+ (ASConstant *)miles {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"miles" type: typeType code: 'mile'];
    return constantObj;
}

+ (ASConstant *)missingValue {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"missingValue" type: typeType code: 'msng'];
    return constantObj;
}

+ (ASConstant *)null {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"null" type: typeType code: 'null'];
    return constantObj;
}

+ (ASConstant *)ounces {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"ounces" type: typeType code: 'ozs '];
    return constantObj;
}

+ (ASConstant *)parameterInfo {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"parameterInfo" type: typeType code: 'pmin'];
    return constantObj;
}

+ (ASConstant *)pixelMapRecord {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"pixelMapRecord" type: typeType code: 'tpmm'];
    return constantObj;
}

+ (ASConstant *)point {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"point" type: typeType code: 'QDpt'];
    return constantObj;
}

+ (ASConstant *)pounds {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"pounds" type: typeType code: 'lbs '];
    return constantObj;
}

+ (ASConstant *)processSerialNumber {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"processSerialNumber" type: typeType code: 'psn '];
    return constantObj;
}

+ (ASConstant *)property {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"property" type: typeType code: 'prop'];
    return constantObj;
}

+ (ASConstant *)propertyInfo {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"propertyInfo" type: typeType code: 'pinf'];
    return constantObj;
}

+ (ASConstant *)quarts {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"quarts" type: typeType code: 'qrts'];
    return constantObj;
}

+ (ASConstant *)record {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"record" type: typeType code: 'reco'];
    return constantObj;
}

+ (ASConstant *)reference {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"reference" type: typeType code: 'obj '];
    return constantObj;
}

+ (ASConstant *)rotation {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"rotation" type: typeType code: 'trot'];
    return constantObj;
}

+ (ASConstant *)script {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"script" type: typeType code: 'scpt'];
    return constantObj;
}

+ (ASConstant *)shortFloat {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"shortFloat" type: typeType code: 'sing'];
    return constantObj;
}

+ (ASConstant *)shortInteger {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"shortInteger" type: typeType code: 'shor'];
    return constantObj;
}

+ (ASConstant *)squareFeet {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"squareFeet" type: typeType code: 'sqft'];
    return constantObj;
}

+ (ASConstant *)squareKilometers {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"squareKilometers" type: typeType code: 'sqkm'];
    return constantObj;
}

+ (ASConstant *)squareMeters {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"squareMeters" type: typeType code: 'sqrm'];
    return constantObj;
}

+ (ASConstant *)squareMiles {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"squareMiles" type: typeType code: 'sqmi'];
    return constantObj;
}

+ (ASConstant *)squareYards {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"squareYards" type: typeType code: 'sqyd'];
    return constantObj;
}

+ (ASConstant *)string {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"string" type: typeType code: 'TEXT'];
    return constantObj;
}

+ (ASConstant *)styledClipboardText {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"styledClipboardText" type: typeType code: 'styl'];
    return constantObj;
}

+ (ASConstant *)styledText {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"styledText" type: typeType code: 'STXT'];
    return constantObj;
}

+ (ASConstant *)suiteInfo {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"suiteInfo" type: typeType code: 'suin'];
    return constantObj;
}

+ (ASConstant *)textStyleInfo {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"textStyleInfo" type: typeType code: 'tsty'];
    return constantObj;
}

+ (ASConstant *)typeClass {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"typeClass" type: typeType code: 'type'];
    return constantObj;
}

+ (ASConstant *)unicodeText {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"unicodeText" type: typeType code: 'utxt'];
    return constantObj;
}

+ (ASConstant *)unsignedInteger {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"unsignedInteger" type: typeType code: 'magn'];
    return constantObj;
}

+ (ASConstant *)utf16Text {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"utf16Text" type: typeType code: 'ut16'];
    return constantObj;
}

+ (ASConstant *)utf8Text {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"utf8Text" type: typeType code: 'utf8'];
    return constantObj;
}

+ (ASConstant *)version {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"version" type: typeType code: 'vers'];
    return constantObj;
}

+ (ASConstant *)writingCode {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"writingCode" type: typeType code: 'psct'];
    return constantObj;
}

+ (ASConstant *)yards {
    static ASConstant *constantObj;
    if (!constantObj)
        constantObj = [ASConstant constantWithName: @"yards" type: typeType code: 'yard'];
    return constantObj;
}


@end