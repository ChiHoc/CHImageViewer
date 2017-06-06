//
//  CHUIUtil.m
//  CHImageViewer
//
//  Created by ChiHo on 2017/6/3.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import "CHUIUtil.h"
#import "CHDeviceInfo.h"

@implementation CHUIUtil

+ (CGRect)screenBounds
{
    return CGRectMake(0, 0, [self screenWidthCurOri], [self screenHeightCurOri]);
}

+ (CGFloat)screenWidthCurOri
{
    if ([self isiPadSplitViewModeNow]) {
        return [self getMainWindowWidth];
    }
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    if ([CHDeviceInfo isiOS8plus]) {
        return screenSize.width;
    }
    UIInterfaceOrientation statusBarOrientation = [[UIApplication sharedApplication] statusBarOrientation];
    return UIInterfaceOrientationIsLandscape(statusBarOrientation) ? screenSize.height : screenSize.width;
}

+ (CGFloat)screenHeightCurOri
{
    if ([self isiPadSplitViewModeNow]) {
        return [self getMainWindowHeight];
    }
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    if ([CHDeviceInfo isiOS8plus]) {
        return screenSize.height;
    }
    UIInterfaceOrientation statusBarOrientation = [[UIApplication sharedApplication] statusBarOrientation];
    return UIInterfaceOrientationIsLandscape(statusBarOrientation) ? screenSize.width : screenSize.height;
}

+ (BOOL)isiPadSplitViewModeNow
{
    if (![CHDeviceInfo isiPadUniversal] || ![CHDeviceInfo isiOS9plus]) {
        return NO;
    }
    id<UIApplicationDelegate> delegate = [[UIApplication sharedApplication] delegate];
    return !CGRectEqualToRect(delegate.window.frame,  [UIScreen mainScreen].bounds);
}

+ (CGFloat)getMainWindowWidth
{
    id<UIApplicationDelegate> delegate = [[UIApplication sharedApplication] delegate];
    return delegate.window.frame.size.width;
}

+ (CGFloat)getMainWindowHeight
{
    id<UIApplicationDelegate> delegate = [[UIApplication sharedApplication] delegate];
    return delegate.window.frame.size.height;
}

@end
