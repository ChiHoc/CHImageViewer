//
//  CHAppUtil.m
//  CHImageViewer
//
//  Created by ChiHo on 2017/6/5.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import "CHAppUtil.h"

@implementation CHAppUtil

+ (BOOL)isOrientationPortrait
{
    return !UIInterfaceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation]);
}

@end
