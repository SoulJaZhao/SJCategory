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

@interface SJViewController () <UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView *tableView;
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
                           ]
                   };
}

#pragma mark - UITableViewDataSource,UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _sourceDic.allKeys.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSString *key = [_sourceDic.allKeys objectAtIndex:section];
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
    
    NSString *key = [_sourceDic.allKeys objectAtIndex:indexPath.section];
    NSString *text = [[_sourceDic objectForKey:key] objectAtIndex:indexPath.row];
    
    cell.textLabel.text = text;
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [_sourceDic.allKeys objectAtIndex:section];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    SJRoundImageViewController *roundVC = [[SJRoundImageViewController alloc] init];
    
    if (indexPath.section == 0) {
        switch (indexPath.row) {
            case 0:
                [self.navigationController pushViewController:roundVC animated:YES];
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
