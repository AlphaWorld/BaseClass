//
//  ZYBaseNavigationController.h
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYBaseNavigationController : UINavigationController
<UIGestureRecognizerDelegate>

@property (nonatomic,assign) BOOL canDragBack;
@end
