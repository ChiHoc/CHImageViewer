//
//  CHImageViewer.m
//  CHImageViewer
//
//  Created by ChiHo on 2017/1/1.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import "CHImageViewer.h"

@interface CHImageViewer ()

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, assign) NSLayoutConstraint *centerXConstraint;
@property (nonatomic, assign) NSLayoutConstraint *centerYConstraint;
@property (nonatomic, assign) NSLayoutConstraint *widthConstraint;
@property (nonatomic, assign) NSLayoutConstraint *heightConstraint;

@end

@implementation CHImageViewer

#pragma mark - 初始化

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self setShowsVerticalScrollIndicator:NO];
        [self setShowsVerticalScrollIndicator:NO];
        [self setAlwaysBounceVertical:NO];
        [self setAlwaysBounceVertical:NO];
        [self setBackgroundColor:[UIColor blackColor]];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setShowsVerticalScrollIndicator:NO];
        [self setShowsVerticalScrollIndicator:NO];
        [self setAlwaysBounceVertical:NO];
        [self setAlwaysBounceVertical:NO];
        [self setBackgroundColor:[UIColor blackColor]];
    }
    return self;
}

#pragma mark - 懒加载

- (UIImageView *)imageView
{
    if (!_imageView) {
        _imageView = [[UIImageView alloc] init];
        [_imageView setContentMode:UIViewContentModeScaleAspectFill];
        [_imageView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self addSubview:_imageView];
        self.centerXConstraint = [NSLayoutConstraint constraintWithItem:_imageView
                                                              attribute:NSLayoutAttributeCenterX
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeCenterX
                                                             multiplier:1
                                                               constant:0];
        self.centerYConstraint = [NSLayoutConstraint constraintWithItem:_imageView
                                                              attribute:NSLayoutAttributeCenterY
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeCenterY
                                                             multiplier:1
                                                               constant:0];
        self.widthConstraint = [NSLayoutConstraint constraintWithItem:_imageView
                                                            attribute:NSLayoutAttributeWidth
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:nil
                                                            attribute:NSLayoutAttributeNotAnAttribute
                                                           multiplier:1
                                                             constant:0];
        self.heightConstraint = [NSLayoutConstraint constraintWithItem:_imageView
                                                             attribute:NSLayoutAttributeHeight
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:nil
                                                             attribute:NSLayoutAttributeNotAnAttribute
                                                            multiplier:1
                                                              constant:0];
        [self addConstraints:@[self.centerXConstraint, self.centerYConstraint, self.widthConstraint, self.heightConstraint]];
    }
    return _imageView;
}

#pragma mark - 属性方法

- (void)setImage:(UIImage *)image
{
    if (!image) {
        assert(image);
    }
    [self.imageView setImage:image];
    [self resetImageViewFrame];
}

#pragma mark - Image frame


/**
 重置imageView frame
 */
- (void)resetImageViewFrame
{
    [self.centerXConstraint setConstant:0];
    [self.centerYConstraint setConstant:0];
    CGSize resize = [self imageResizeBaseOnViewerWidth:self.bounds.size.width
                                             imageSize:self.imageView.image.size];
    [self.widthConstraint setConstant:resize.width];
    [self.heightConstraint setConstant:resize.height];
    
    [self layoutIfNeeded];
}


/**
 获取图片在viewer上的尺寸

 @param viewerWidth viewer宽度
 @param imageSize 图片尺寸
 @return 新的尺寸
 */
- (CGSize)imageResizeBaseOnViewerWidth:(CGFloat)viewerWidth
                             imageSize:(CGSize)imageSize
{
    CGFloat scaleFactor = viewerWidth / imageSize.width;
    CGFloat resizeHeight = imageSize.height * scaleFactor;
    return CGSizeMake(viewerWidth, resizeHeight);
}

@end
