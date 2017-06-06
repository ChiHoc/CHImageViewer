//
//  CHMultiImageBrowseViewContainer.m
//  CHImageViewer
//
//  Created by ChiHo on 2017/6/2.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import "CHMultiImageBrowseViewContainer.h"
#import "CHImageScrollViewHelper.h"
#import "CHImageBrowseItem.h"
#import "CHUIUtil.h"

@interface UIView (Extension)

- (void)removeAllSubViews;

@end

@implementation UIView (Extension)

- (void)removeAllSubViews
{
    for (UIView *subview in self.subviews) {
        [subview removeFromSuperview];
        [subview removeAllSubViews];
    }
}

@end

@interface CHMultiImageBrowseViewContainer () <UIScrollViewDelegate, CHImageScrollViewHelperDelegate>

@end

@implementation CHMultiImageBrowseViewContainer

- (id)init
{
    if (self = [super initWithFrame:[CHUIUtil screenBounds]]) {
        [self setBackgroundColor:[UIColor clearColor]];
        [self setClipsToBounds:YES];
        [self setShowsVerticalScrollIndicator:NO];
        [self setShowsHorizontalScrollIndicator:NO];
        [self setDecelerationRate:UIScrollViewDecelerationRateNormal];
        [self setScrollEnabled:YES];
        [self setBouncesZoom:YES];
        [self setDelegate:self];
        self.lastDeviceOrientation = [UIDevice currentDevice].orientation;
    }
    return self;
}

- (void)initScrollViewHelper
{
    if (!self.isImageReady) {
        self.scrollViewHelper = [[CHImageScrollViewHelper alloc] init];
        self.scrollViewHelper.dontCalcPreviewRect = YES;
        self.scrollViewHelper.noSingleTaps = YES;
        self.scrollViewHelper.m_delegate = self;
        if (!self.image) {
            return;
        }
        [self.scrollViewHelper initHelper:self.image.size];
    }
}

- (void)clearStatus
{
    self.isShowing = NO;
    self.isAnimating = YES;
    self.isLongPressHandled = YES;
    self.imageBrowseItem = nil;
    self.image = nil;
    [self removeAllSubViews];
}

- (void)setImageBrowseItem:(CHImageBrowseItem *)imageBrowseItem
{
    if (imageBrowseItem) {
        [self clearStatus];
        int length = [imageBrowseItem.imgUrl lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
        [imageBrowseItem.imgUrl UTF8String];
    }
    self.imageBrowseItem = imageBrowseItem;
}

@end
