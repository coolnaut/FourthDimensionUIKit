//
//  FDSUtility.m
//  FourthDimensionUIKit
//
//  Created by Coolnaut on 2022/4/22.
//

#import "FDSUtility.h"
#import "FDSUtilityMacro.h"

@implementation FDSUtility

+ (void)fds_timeStampWithTag:(NSString *)tag {
    if (kFDS_STRING_VALID(tag)) {
        tag = @"FDS";
    }
    NSDate* date = [NSDate dateWithTimeIntervalSinceNow:0];
    NSTimeInterval time=[date timeIntervalSince1970]*1000;
    NSLog(@"%@: %@", tag, [NSString stringWithFormat:@"%.0f", time]);

}
@end
