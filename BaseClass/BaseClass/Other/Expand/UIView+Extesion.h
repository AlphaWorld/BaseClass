//
//  UIView+Extesion.h
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extesion)
@property (nonatomic, copy) UIView *(^setFrame)(CGFloat x,CGFloat y,CGFloat w,CGFloat h);
@property (nonatomic, copy) UIView *(^setBackgroundColor)(UIColor *daycolor,UIColor *nightColor);

@end
