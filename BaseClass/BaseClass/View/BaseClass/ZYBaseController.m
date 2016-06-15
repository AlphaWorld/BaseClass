//
//  ZYBaseController.m
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import "ZYBaseController.h"
#import "ZYBaseVeiwModel.h"
#import "CommenMethod.h"
@interface ZYBaseController ()
@property (nonatomic, strong) ZYBaseVeiwModel *viewModel;
@end

@implementation ZYBaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.translucent = NO;
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.extendedLayoutIncludesOpaqueBars = NO;
    
    
    self.view.setBackgroundColor(VIEWDAYCOLOR,VIEWNIGHTCOLOR);
    

}

- (ZYBaseController *)initWithViewModel:(id)viewModel{
    if (self = [super init]) {
        self.viewModel = viewModel;
        @weakify(self)
        [[self
          rac_signalForSelector:@selector(viewDidLoad)]
         subscribeNext:^(id x) {
             @strongify(self)
             [self bindViewModel:viewModel];
         }];
    }
    return self;
}



- (void)bindViewModel:(id)viewModel{
    
}

- (void)useTopicToCreatVeiwWithModel{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
