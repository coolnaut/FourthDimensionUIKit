//
//  FDSGeometry.h
//  FourthDimensionUIKit
//
//  Created by Coolnaut on 2022/4/22.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

// You should pay attention to the direction of the line, preferably as a vector
// Because it is very important to calculate the angle
typedef struct FDSLine {
    CGPoint start;
    CGPoint end;
} FDSLine;

NS_INLINE FDSLine FDSLineMake(CGPoint start, CGPoint end) {
    FDSLine line;
    line.start = start;
    line.end = end;
    return line;
}

@interface FDSGeometry : NSObject

/// Distance between two points
/// @param point first point
/// @param otherPoint second point
+ (CGFloat)fds_distanceBetweenPoint:(CGPoint)point otherPoint:(CGPoint)otherPoint;

/// Radian between two lines
/// @param line first line
/// @param otherLine second line
+ (CGFloat)fds_radianBetweenLine:(FDSLine)line otherLine:(FDSLine)otherLine;

/// Radian of line and coordinate axis
/// @param line current line
/// @param axisType Axis: 0 is X and 1 is Y
+ (CGFloat)fds_radianBetweenLine:(FDSLine)line axisType:(NSUInteger)axisType;

/// Center point of line
/// @param line current line
+ (CGPoint)fds_centerForLine:(FDSLine)line;

@end



NS_ASSUME_NONNULL_END
