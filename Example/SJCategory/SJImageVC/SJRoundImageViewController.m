//
//  SJRoundImageViewController.m
//  SJCategory
//
//  Created by SoulJa on 2017/8/5.
//  Copyright © 2017年 SoulJaZhao. All rights reserved.
//

#import "SJRoundImageViewController.h"
#import <SJCategory/SJCategory.h>

@interface SJRoundImageViewController ()

@end

@implementation SJRoundImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIImage *image = [[UIImage imageNamed:@"photo"] sj_imageWithCornerRadius:250.0f];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.center = self.view.center;
    imageView.bounds = CGRectMake(0, 0, 200, 200);
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    imageView.image = image;
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
