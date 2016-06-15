//
//  ZYMainViewController.m
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import "ZYMainViewController.h"
#import "ZYTopicColorManager.h"
@interface ZYMainViewController ()

@end

@implementation ZYMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)bindViewModel:(id)viewModel{
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [ZYTopicColorManager sharedTheSingletion].theme = [ZYTopicColorManager sharedTheSingletion].theme == 1? 0:1;
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
