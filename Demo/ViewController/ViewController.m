//
//  ViewController.m
//  CHImageViewer
//
//  Created by ChiHo on 2016/12/24.
//  Copyright © 2016年 Chiho. All rights reserved.
//

#import "ViewController.h"
#import "CHImageViewer.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet CHImageViewer *imageViewer;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"image" ofType:@"png"];
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    [self.imageViewer setImage:image];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
