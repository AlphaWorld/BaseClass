//
//  ZYMainViewController.m
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import "ZYMainViewController.h"
#import "ZYMainViewModel.h"
#import "ZYTopicColorManager.h"
#import "ZYDayCell.h"
#import "ZYNightCell.h"
#import "ZYBaseCell.h"
@interface ZYMainViewController ()
@property (nonatomic, strong) UITableView *tableview;
@property (nonatomic, strong) ZYMainViewModel *viewModel;
@end

@implementation ZYMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) style:UITableViewStylePlain];
    [self.view addSubview:self.tableview];
    [self.tableview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.and.left.and.right.and.bottom.equalTo(self.view);
    }];
    self.tableview.setBackgroundColor(VIEWDAYCOLOR,VIEWNIGHTCOLOR);
    [self.tableview registerClass:[ZYBaseCell class] forCellReuseIdentifier:@"ZYBaseCell"];
    [self.tableview registerClass:[ZYNightCell class] forCellReuseIdentifier:@"ZYNightCell"];
    [self.tableview  registerClass:[ZYDayCell class] forCellReuseIdentifier:@"ZYDayCell"];
}

- (void)bindViewModel:(ZYMainViewModel *)viewModel{
    self.viewModel = viewModel;
    self.tableview.delegate = self.viewModel;
    self.tableview.dataSource = self.viewModel;
    [self.viewModel updata];
    [self.viewModel.complete subscribeNext:^(id x) {
        [self.tableview reloadData];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
