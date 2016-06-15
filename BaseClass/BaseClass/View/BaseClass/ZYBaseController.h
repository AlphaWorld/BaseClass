//
//  ZYBaseController.h
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZYReactive.h"
@interface ZYBaseController : UIViewController <ZYReactive,ZYTopicProcotol>
- (ZYBaseController *)initWithViewModel:(id)viewModel;
@end
