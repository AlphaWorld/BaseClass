//
//  ZYMainViewModel.h
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import "ZYBaseVeiwModel.h"

@interface ZYMainViewModel : ZYBaseVeiwModel
<
UITableViewDelegate,
UITableViewDataSource
>
- (void)updata;
@property (nonatomic, strong) RACSubject *complete;
@end
