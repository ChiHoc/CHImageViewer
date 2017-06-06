//
//  CHBaseFile.m
//  CHImageViewer
//
//  Created by ChiHo on 2017/6/6.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import "CHBaseFile.h"

@implementation CHBaseFile

+ (BOOL)fileExist:(NSString *)filePath
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    return [fileManager fileExistsAtPath:filePath];
}

+ (BOOL)createPath:(NSString *)path
{
    if (![self fileExist:path]) {
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSError* error;
        if (path.length) {
            BOOL isSuccess = [fileManager createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:&error];
            if (!isSuccess) {
                NSLog(@"create file path:%@ fail:%@", path, error.description);
            }
            return isSuccess;
        }
    }
    return NO;
}

@end
