//
//  CHDeviceInfo.m
//  CHImageViewer
//
//  Created by ChiHo on 2017/6/3.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import "CHDeviceInfo.h"

@implementation CHDeviceInfo

+ (BOOL)isiPadUniversal
{
    NSString *deviceModel = [[UIDevice currentDevice] model];
    return [deviceModel hasPrefix:@"iPad"];
}

+ (BOOL)isiOS9plus
{
    float version = [[[UIDevice currentDevice] systemVersion] floatValue];
    return version > 8.9;
}

+ (BOOL)isiOS8plus
{
    float version = [[[UIDevice currentDevice] systemVersion] floatValue];
    return version > 7.9;
}


@end
