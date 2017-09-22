//
//  SJStringViewController.m
//  SJCategory
//
//  Created by SDPMobile on 2017/9/22.
//  Copyright © 2017年 SoulJaZhao. All rights reserved.
//

#import "SJStringViewController.h"
#import <SJCategory/SJCategory.h>

@interface SJStringViewController ()

@end

@implementation SJStringViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSLog(@"32位MD5小写:%@",[NSString sj_md5ForLowerBate:@"123456"]);
    NSLog(@"32位MD5大写:%@",[NSString sj_md5ForUpperBate:@"123456"]);
    NSLog(@"16位MD5小写:%@",[NSString sj_md5ForLower16Bate:@"123456"]);
    NSLog(@"16位MD5大写:%@",[NSString sj_md5ForUpper16Bate:@"123456"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
