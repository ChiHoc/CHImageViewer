//
//  CHDeviceInfo.h
//  CHImageViewer
//
//  Created by ChiHo on 2017/6/3.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHDeviceInfo : NSObject

/**
 是否iPad
 
 @return 布尔值
 */
+ (BOOL)isiPadUniversal;

/**
 是否iOS9以上
 
 @return 布尔值
 */
+ (BOOL)isiOS9plus;

/**
 是否iOS8以上
 
 @return 布尔值
 */
+ (BOOL)isiOS8plus;

@end
