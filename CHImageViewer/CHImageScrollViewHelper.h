//
//  CHImageScrollViewHelper.h
//  CHImageViewer
//
//  Created by ChiHo on 2017/6/2.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MMImageScrollViewHelperDelegate <NSObject>

@optional
@property (copy, nonatomic) NSArray *gestureRecognizers;
@property (assign, nonatomic) float maximumZoomScale;
@property (assign, nonatomic) float minimumZoomScale;
@property (assign, nonatomic) float zoomScale;
@property (assign, nonatomic) CGRect frame;

- (void)zoomToRect:(CGRect)rect animated:(BOOL)animated;
- (void)setZoomScale:(float)scale animated:(BOOL)animated;
- (void)removeGestureRecognizer:(UIGestureRecognizer *)gestureRecognizer;
- (void)addGestureRecognizer:(UIGestureRecognizer *)gestureRecognizer;
- (void)onLongPress:(id)arg1;
- (BOOL)isBanDoubleTap;
- (void)onDoubleTap:(UIGestureRecognizer *)gestureRecognizer;
- (void)onSingleTap:(UIGestureRecognizer *)gestureRecognizer;
- (UIScrollView *)getScrollView;
- (UIView *)viewForZooming;

@end

@interface CHImageScrollViewHelper : NSObject

@property (assign, nonatomic) BOOL dontCalcPreviewRect;
@property (assign, nonatomic) BOOL noSingleTaps;
@property (assign, nonatomic) BOOL noDoubleTaps;
@property (assign, nonatomic) BOOL dontSupportVerticalLongImage;
@property (assign, nonatomic) BOOL dontSupportHorizontalLongImage;
@property (weak, nonatomic) id <MMImageScrollViewHelperDelegate> m_delegate;

- (void)initHelper:(CGSize)arg1 orientation:(UIDeviceOrientation)orientation;
- (void)initHelper:(CGSize)arg1 orientation:(UIDeviceOrientation)orientation containSize:(CGSize)containSize;
- (void)initHelper:(CGSize)arg1;
- (void)initGestureRecognizer;
- (void)scrollViewDidZoom:(id)arg1;
- (void)zoomForPoint:(CGPoint)point;
- (void)onDoubleTap:(UIGestureRecognizer *)gestureRecognizer;
- (CGRect)zoomRectForScale:(float)scale withCenter:(CGPoint)center;
- (void)onSingleTap:(UIGestureRecognizer *)gestureRecognizer;
- (CGSize)calculateImageFitSizeForPreview:(CGSize)fitSize maxSize:(CGSize)maxSize;

@end
