//
//  CHUIUtil.h
//  CHImageViewer
//
//  Created by ChiHo on 2017/6/3.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHUIUtil : NSObject

/**
 屏幕bounds

 @return 屏幕bounds
 */
+ (CGRect)screenBounds;

/**
 根据当前设备方向获取宽度

 @return 宽度
 */
+ (CGFloat)screenWidthCurOri;

/**
 根据当前设备方向获取高度

 @return 高度
 */
+ (CGFloat)screenHeightCurOri;

/**
 是否分屏模式

 @return 布尔值
 */
+ (BOOL)isiPadSplitViewModeNow;

@end
