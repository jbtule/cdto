//
//  constant.h
//  appscript
//
//  Copyright (C) 2007 HAS
//

#import <Foundation/Foundation.h>

/**********************************************************************/
// base class for application-specific constants

@interface ASConstant : NSObject {
	NSString *name;
	NSAppleEventDescriptor *desc;
}

+ (id)constantWithName:(NSString *)name_ type:(DescType)type_ code:(OSType)code_;
+ (id)constantWithCode:(OSType)code_;

- (id)initWithName: (NSString *)name_ descriptor:(NSAppleEventDescriptor *)desc_;

- (NSString *)AS_name;
- (OSType)AS_code;

- (NSAppleEventDescriptor *)AS_packSelf:(id)codecs;


/***********************************/
// Apple Event Manager-defined types and enumerators

/* Enumerators */

+ (ASConstant *)applicationResponses;
+ (ASConstant *)ask;
+ (ASConstant *)case_;
+ (ASConstant *)diacriticals;
+ (ASConstant *)expansion;
+ (ASConstant *)hyphens;
+ (ASConstant *)no;
+ (ASConstant *)numericStrings;
+ (ASConstant *)punctuation;
+ (ASConstant *)whitespace;
+ (ASConstant *)yes;

/* Types and properties */

+ (ASConstant *)April;
+ (ASConstant *)August;
+ (ASConstant *)December;
+ (ASConstant *)EPSPicture;
+ (ASConstant *)February;
+ (ASConstant *)Friday;
+ (ASConstant *)GIFPicture;
+ (ASConstant *)JPEGPicture;
+ (ASConstant *)January;
+ (ASConstant *)July;
+ (ASConstant *)June;
+ (ASConstant *)March;
+ (ASConstant *)May;
+ (ASConstant *)Monday;
+ (ASConstant *)November;
+ (ASConstant *)October;
+ (ASConstant *)PICTPicture;
+ (ASConstant *)RGB16Color;
+ (ASConstant *)RGB96Color;
+ (ASConstant *)RGBColor;
+ (ASConstant *)Saturday;
+ (ASConstant *)September;
+ (ASConstant *)Sunday;
+ (ASConstant *)TIFFPicture;
+ (ASConstant *)Thursday;
+ (ASConstant *)Tuesday;
+ (ASConstant *)Wednesday;
+ (ASConstant *)alias;
+ (ASConstant *)anything;
+ (ASConstant *)applicationBundleID;
+ (ASConstant *)applicationSignature;
+ (ASConstant *)applicationURL;
+ (ASConstant *)best;
+ (ASConstant *)boolean;
+ (ASConstant *)boundingRectangle;
+ (ASConstant *)centimeters;
+ (ASConstant *)class_;
+ (ASConstant *)classInfo;
+ (ASConstant *)colorTable;
+ (ASConstant *)cubicCentimeters;
+ (ASConstant *)cubicFeet;
+ (ASConstant *)cubicInches;
+ (ASConstant *)cubicMeters;
+ (ASConstant *)cubicYards;
+ (ASConstant *)dashStyle;
+ (ASConstant *)data;
+ (ASConstant *)date;
+ (ASConstant *)decimalStruct;
+ (ASConstant *)degreesCelsius;
+ (ASConstant *)degreesFahrenheit;
+ (ASConstant *)degreesKelvin;
+ (ASConstant *)doubleInteger;
+ (ASConstant *)elementInfo;
+ (ASConstant *)encodedString;
+ (ASConstant *)enumerator;
+ (ASConstant *)eventInfo;
+ (ASConstant *)extendedFloat;
+ (ASConstant *)feet;
+ (ASConstant *)fileRef;
+ (ASConstant *)fileSpecification;
+ (ASConstant *)fileURL;
+ (ASConstant *)fixed;
+ (ASConstant *)fixedPoint;
+ (ASConstant *)fixedRectangle;
+ (ASConstant *)float_;
+ (ASConstant *)float128bit;
+ (ASConstant *)gallons;
+ (ASConstant *)grams;
+ (ASConstant *)graphicText;
+ (ASConstant *)inches;
+ (ASConstant *)integer;
+ (ASConstant *)internationalText;
+ (ASConstant *)internationalWritingCode;
+ (ASConstant *)kernelProcessID;
+ (ASConstant *)kilograms;
+ (ASConstant *)kilometers;
+ (ASConstant *)list;
+ (ASConstant *)liters;
+ (ASConstant *)locationReference;
+ (ASConstant *)longFixed;
+ (ASConstant *)longFixedPoint;
+ (ASConstant *)longFixedRectangle;
+ (ASConstant *)longPoint;
+ (ASConstant *)longRectangle;
+ (ASConstant *)machPort;
+ (ASConstant *)machine;
+ (ASConstant *)machineLocation;
+ (ASConstant *)meters;
+ (ASConstant *)miles;
+ (ASConstant *)missingValue;
+ (ASConstant *)null;
+ (ASConstant *)ounces;
+ (ASConstant *)parameterInfo;
+ (ASConstant *)pixelMapRecord;
+ (ASConstant *)point;
+ (ASConstant *)pounds;
+ (ASConstant *)processSerialNumber;
+ (ASConstant *)property;
+ (ASConstant *)propertyInfo;
+ (ASConstant *)quarts;
+ (ASConstant *)record;
+ (ASConstant *)reference;
+ (ASConstant *)rotation;
+ (ASConstant *)script;
+ (ASConstant *)shortFloat;
+ (ASConstant *)shortInteger;
+ (ASConstant *)squareFeet;
+ (ASConstant *)squareKilometers;
+ (ASConstant *)squareMeters;
+ (ASConstant *)squareMiles;
+ (ASConstant *)squareYards;
+ (ASConstant *)string;
+ (ASConstant *)styledClipboardText;
+ (ASConstant *)styledText;
+ (ASConstant *)suiteInfo;
+ (ASConstant *)textStyleInfo;
+ (ASConstant *)typeClass;
+ (ASConstant *)unicodeText;
+ (ASConstant *)unsignedInteger;
+ (ASConstant *)utf16Text;
+ (ASConstant *)utf8Text;
+ (ASConstant *)version;
+ (ASConstant *)writingCode;
+ (ASConstant *)yards;

@end

