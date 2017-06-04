//
//  CHMultiImageBrowseViewContainer.m
//  CHImageViewer
//
//  Created by ChiHo on 2017/6/2.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import "CHMultiImageBrowseViewContainer.h"
#import "CHUIUtil.h"

@interface CHMultiImageBrowseViewContainer () <UIScrollViewDelegate>

@end

@implementation CHMultiImageBrowseViewContainer

- (id)init
{
    if (self = [super initWithFrame:[CHUIUtil screenBounds]]) {
        [self setBackgroundColor:[UIColor clearColor]];
        [self setClipsToBounds:true];
        [self setShowsVerticalScrollIndicator:false];
        [self setShowsHorizontalScrollIndicator:false];
        [self setDecelerationRate:UIScrollViewDecelerationRateNormal];
        [self setScrollEnabled:true];
        [self setBouncesZoom:true];
        [self setDelegate:self];
        self.lastDeviceOrientation = [UIDevice currentDevice].orientation;
    }
    return self;
}


@end
