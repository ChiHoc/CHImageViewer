//
//  CUtility.h
//  CHImageViewer
//
//  Created by ChiHo on 2017/6/6.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CUtility : NSObject
    
/**
 获取缓存路径

 @return 缓存路径
 */
+ (NSString *)getLibraryCachedPath;

/**
 设置路径不加入备份
 
 @param path 路径
 @return 布尔值
 */
+ (BOOL)setDoNotBackupForPath:(NSString *)path;

@end
