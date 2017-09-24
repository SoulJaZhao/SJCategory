//
//  SJShapeViewController.m
//  SJCategory
//
//  Created by SoulJa on 2017/9/24.
//  Copyright © 2017年 SoulJaZhao. All rights reserved.
//

#import "SJShapeViewController.h"
#import <SJCategory/SJCategory.h>

@interface SJShapeViewController ()

@end

@implementation SJShapeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 100, 150)];
    UIView *sharpView = [UIView sj_createSharpMaskView:redView];
    sharpView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:sharpView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
