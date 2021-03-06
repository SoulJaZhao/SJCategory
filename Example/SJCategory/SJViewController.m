//
//  SJViewController.m
//  SJCategory
//
//  Created by SoulJaZhao on 08/05/2017.
//  Copyright (c) 2017 SoulJaZhao. All rights reserved.
//

#import "SJViewController.h"
#import <SJCategory/SJCategory.h>
#import "SJRoundImageViewController.h"
#import "SJColorViewController.h"
#import "SJStringViewController.h"
#import "SJShapeViewController.h"
#import "SJImageViewViewController.h"

@interface SJViewController () <UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView *tableView;

/**  标题数组 **/
@property (nonatomic, strong) NSArray *titleArray;

/**  数据源 **/
@property (nonatomic,strong) NSDictionary *sourceDic;

@end

@implementation SJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [_tableView setDataSource:self];
    [_tableView setDelegate:self];
    [_tableView setBackgroundColor:[UIColor sj_colorWithHexString:@"#CCE9F9"]];
    [self.view addSubview:_tableView];
    
    _sourceDic = @{
                   @"SJImage":@[
                            @"圆角Image"
                           ],
                   @"SJColor":@[
                            @"16进制字符串颜色"
                           ],
                   @"SJString":@[
                            @"32位MD5小写",
                            @"32位MD5大写",
                            @"16位MD5小写",
                            @"16位MD5大写"
                           ],
                   @"SJView":@[
                            @"带尖角的View"
                           ],
                   @"SJImageView":@[
                            @"带尖角的ImageView"
                           ]
                   };
    
    _titleArray = @[
                    @"SJImage",
                    @"SJColor",
                    @"SJString",
                     @"SJView",
                    @"SJImageView"
                    ];
}

#pragma mark - UITableViewDataSource,UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _titleArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSString *key = [_titleArray objectAtIndex:section];
    NSArray *arr = [_sourceDic objectForKey:key];
    return arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cellID";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellID];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    NSString *key = [_titleArray objectAtIndex:indexPath.section];
    NSString *text = [[_sourceDic objectForKey:key] objectAtIndex:indexPath.row];
    
    cell.textLabel.text = text;
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [_titleArray objectAtIndex:section];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    SJRoundImageViewController *roundVC = [[SJRoundImageViewController alloc] init];
    
    SJColorViewController *colorVC = [[SJColorViewController alloc] init];
    
    SJStringViewController *stringVC = [[SJStringViewController alloc] init];
    
    SJShapeViewController *shapeVC = [[SJShapeViewController alloc] init];
    SJImageViewViewController *imageViewVC = [[SJImageViewViewController alloc] init];
    
    if (indexPath.section == 0) {
        switch (indexPath.row) {
            case 0:
                [self.navigationController pushViewController:roundVC animated:YES];
                break;
            default:
                break;
        }
    } else if (indexPath.section == 1) {
        switch (indexPath.row) {
            case 0:
                [self.navigationController pushViewController:colorVC animated:YES];
                break;
            default:
                break;
        }
    } else if (indexPath.section == 2) {
        switch (indexPath.row) {
            case 0:
            case 1:
            case 2:
            case 3:
                [self.navigationController pushViewController:stringVC animated:YES];
                break;
            default:
                break;
        }
    } else if (indexPath.section == 3) {
        switch (indexPath.row) {
            case 0:
                [self.navigationController pushViewController:shapeVC animated:YES];
                break;
                
            default:
                break;
        }
    } else if (indexPath.section == 4) {
        switch (indexPath.row) {
            case 0:
                [self.navigationController pushViewController:imageViewVC animated:YES];
                break;
                
            default:
                break;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
