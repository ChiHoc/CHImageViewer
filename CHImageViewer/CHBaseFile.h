//
//  CHBaseFile.h
//  CHImageViewer
//
//  Created by ChiHo on 2017/6/6.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CHBaseFile : NSObject

/**
 判断文件是否存在
 
 @param filePath 文件路径
 @return 布尔值
 */
+ (BOOL)fileExist:(NSString *)filePath;

/**
 生成文件
 
 @param path 文件路径
 @return 布尔值
 */
+ (BOOL)createPath:(NSString *)path;

@end
