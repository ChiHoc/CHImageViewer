//
//  CHMultiImageBrowseViewContainer.h
//  CHImageViewer
//
//  Created by ChiHo on 2017/6/2.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import "CHUIScrollView.h"

@class CHImageBrowseItem, CHImageScrollViewHelper;

@protocol CHMultiImageBrowseViewContainerDelegate <NSObject>

@end

@interface CHMultiImageBrowseViewContainer : CHUIScrollView

@property (strong, nonatomic) CHImageBrowseItem *imageBrowseItem;
@property (assign, nonatomic) CGRect originImageRectInScreen;
@property (assign, nonatomic) CGSize initalContentSize;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) UIImageView *m_oBackGroundImageView;
@property (assign, nonatomic) BOOL isAnimating;
@property (assign, nonatomic) BOOL isShowing;
@property (assign, nonatomic) BOOL isLongPressHandled;
@property (assign, nonatomic) BOOL isImageReady;
@property (assign, nonatomic) int lastDeviceOrientation;
@property (strong, nonatomic) UIImageView *container;
//@property (strong, nonatomic) MMLoadingView *loadingView;
//@property (strong, nonatomic) MMProgressViewEx *m_processView;
@property (strong, nonatomic) UIImage *processBackGroundImage;
@property (strong, nonatomic) CHImageScrollViewHelper *scrollViewHelper;
//@property (strong, nonatomic) WCActionSheet *m_actionSheet;
@property (strong, nonatomic) id <CHMultiImageBrowseViewContainerDelegate> m_delegate;

@end
