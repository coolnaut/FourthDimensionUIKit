//
//  FDSUtility.h
//  FourthDimensionUIKit
//
//  Created by Coolnaut on 2022/4/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FDSUtility : NSObject

/// Current timestamp message:xxx
/// @param tag tag information is used for log filtering
+ (void)fds_timeStampWithTag:(NSString *)tag;

@end

NS_ASSUME_NONNULL_END
