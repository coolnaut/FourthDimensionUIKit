//
//  FDSGeometry.m
//  FourthDimensionUIKit
//
//  Created by Coolnaut on 2022/4/22.
//

#import "FDSGeometry.h"
#import "FDSUtilityMacro.h"

@implementation FDSGeometry

+ (CGFloat)fds_distanceBetweenPoint:(CGPoint)point otherPoint:(CGPoint)otherPoint {
    CGFloat deltaX = otherPoint.x - point.x;
    CGFloat deltaY = otherPoint.y - point.y;
    return sqrt(deltaX * deltaX + deltaY * deltaY);
}

+ (CGFloat)fds_radianBetweenLine:(FDSLine)line otherLine:(FDSLine)otherLine {
    CGFloat distanceX1 = line.end.x - line.start.x;
    CGFloat distanceY1 = line.end.y - line.start.y;
    CGFloat distanceX2 = otherLine.end.x - otherLine.start.x;
    CGFloat distanceY2 = otherLine.end.y - otherLine.start.y;
    CGFloat theta = atan2(distanceX1, distanceY1) - atan2(distanceX2, distanceY2);
    if (theta < 0) {
       theta += 2 * M_PI;
    }
    return theta;
}

+ (CGFloat)fds_radianBetweenLine:(FDSLine)line axisType:(NSUInteger)axisType {
    if (axisType) {
        // Do not use FDSLineMake(line.start, CGPointMake(line.start.x, line.end.y));
        FDSLine axis = FDSLineMake(CGPointMake(0, 0), CGPointMake(0, kFDSScreenHeight));
        return [self fds_radianBetweenLine:line otherLine:axis];;
    } else {
        // Do not use FDSLineMake(line.start, CGPointMake(line.end.x, line.start.y));
        FDSLine axis = FDSLineMake(CGPointMake(0, 0), CGPointMake(kFDSScreenWidth, 0));
        return [self fds_radianBetweenLine:line otherLine:axis];
    }
}

+ (CGPoint)fds_centerForLine:(FDSLine)line {
    CGFloat x = (line.end.x + line.start.x) * 0.5;
    CGFloat y = (line.end.y + line.start.y) * 0.5;
    return CGPointMake(x, y);
}

@end
