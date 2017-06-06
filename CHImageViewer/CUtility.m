//
//  CUtility.m
//  CHImageViewer
//
//  Created by ChiHo on 2017/6/6.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import "CUtility.h"
#import "CHBaseFile.h"
#import "sys/xattr.h"

@implementation CUtility

static NSString *const CachedDirName = @"Cache";

+ (NSString *)getLibraryCachedPath
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    if ([documentsDirectory length]) {
        NSString *cachePath = [documentsDirectory stringByAppendingPathComponent:CachedDirName];
        if ([CHBaseFile fileExist:cachePath]) {
            return cachePath;
        }
        if (![CHBaseFile createPath:cachePath]) {
            return nil;
        }
        [CUtility setDoNotBackupForPath:cachePath];
        return cachePath;
    }
    return nil;
}


+ (BOOL)setDoNotBackupForPath:(NSString *)path
{
    const char *filePath = [path fileSystemRepresentation];
    
    const char *attrName = "com.apple.MobileBackup";
    u_int8_t attrValue = 1;
    
    int result = setxattr(filePath, attrName, &attrValue, sizeof(attrValue), 0, 0);
    return result == 0;
}

@end
