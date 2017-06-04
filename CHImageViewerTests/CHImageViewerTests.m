//
//  CHImageViewerTests.m
//  CHImageViewerTests
//
//  Created by ChiHo on 2017/6/4.
//  Copyright © 2017年 Chiho. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CHUIUtil.h"

@interface CHImageViewerTests : XCTestCase

@end

@implementation CHImageViewerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testUIUtil {
    assert([CHUIUtil isiPadSplitViewModeNow]);    
}

@end
