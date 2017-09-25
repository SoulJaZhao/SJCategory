//
//  SJImageViewViewController.m
//  SJCategory
//
//  Created by SDPMobile on 2017/9/25.
//  Copyright © 2017年 SoulJaZhao. All rights reserved.
//

#import "SJImageViewViewController.h"
#import <SJCategory/SJCategory.h>

@interface SJImageViewViewController ()

@end

@implementation SJImageViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"photo"]];
    
    imageView.frame = CGRectMake(10, 10, 100, 150);
    
    imageView = [UIImageView sj_createSharpMaskView:imageView];
    
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
