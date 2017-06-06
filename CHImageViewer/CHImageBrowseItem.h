//
//  CHImageBrowseItem.h
//  CHImageViewer
//
//  Created by ChiHo on 2017/6/2.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIImage;

@interface CHImageBrowseItem : NSObject

@property (strong, nonatomic) UIImage *thumbImage;
@property (strong, nonatomic) NSString *imgUrl;
@property (strong, nonatomic) NSData *imgData;

@end
