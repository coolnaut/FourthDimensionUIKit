//
//  FDSUtilityMacro.h
//  FourthDimensionUIKit
//
//  Created by Coolnaut on 2022/4/22.
//

#ifndef FDSUtilityMacro_h
#define FDSUtilityMacro_h

#pragma mark -  UIColor

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define UIColorFromRGBA(rgbValue, alphaVallue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(alphaVallue)]

#pragma mark - Size

#define kFDSScreenWidth       ([UIScreen mainScreen].bounds.size.width)
#define kFDSScreenHeight      ([UIScreen mainScreen].bounds.size.height)
#define kFDSViewScale(arg) arg * [UIScreen mainScreen].bounds.size.width / 414.f

#pragma mark - Log

#define FDSLog(FORMAT, ...) fprintf(stderr,"%d\t%s\n", __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

#pragma mark - Degrees & Radian

#define kFDSDegreesToRadian(deg) (M_PI * deg / 180.0)
#define kFDSRadiansToDegrees(rad) (180.0 * rad / M_PI)

#pragma mark - String

#define kFDS_STRING_VALID(args) ([args isKindOfClass:NSString.class] && args.length > 0)


#endif /* FDSUtilityMacro_h */
