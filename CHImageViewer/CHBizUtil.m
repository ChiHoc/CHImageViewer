//
//  CHBizUtil.m
//  CHImageViewer
//
//  Created by ChiHo on 2017/6/5.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import "CHBizUtil.h"
#import "CUtility.h"
#import "CHBaseFile.h"

@implementation CHBizUtil

static NSString *const ImgCachedDirName = @"BizImgCached";

+ (NSString *)getImgCachedPath:(NSString *)imgUrl
{
    NSString *imgCachedPath = [[CUtility getLibraryCachedPath] stringByAppendingPathComponent:ImgCachedDirName];
    if (![CHBaseFile fileExist:imgCachedPath]) {
        [CHBaseFile createPath:imgCachedPath];
    }
    return imgCachedPath;
}

@end
