//
//  UIView+Extesion.m
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import "UIView+Extesion.h"
#import "ZYTopicColorManager.h"
#import "CommenMethod.h"
@implementation UIView (Extesion)


- (UIView *(^)(CGFloat, CGFloat, CGFloat, CGFloat))setFrame{
    return ^(CGFloat x, CGFloat y, CGFloat w, CGFloat h){
        self.frame = CGRectMake(x, y, w, h);
        return self;
    };
}
- (void)setSetFrame:(UIView *(^)(CGFloat, CGFloat, CGFloat, CGFloat))setFrame{};


- (UIView *(^)(UIColor *dayColor,UIColor *night))setBackgroundColor{
    return ^(UIColor* daycolor,UIColor *night){
        NSLog(@"%s",object_getClassName([self class]));
        
        
        NSMutableDictionary *dict                       = [CommenMethod readAccountPlist];
        [ZYTopicColorManager sharedTheSingletion].theme = [[dict valueForKey:THEME] integerValue];
        [[ZYTopicColorManager sharedTheSingletion].colorTopic subscribeNext:^(id x) {
            NSInteger theme      = [x integerValue];
            self.backgroundColor = theme != 1?daycolor:night;
            if ([self isKindOfClass:[UINavigationBar class]]) {
                UINavigationBar *nar    = (UINavigationBar *)self;
                nar.barTintColor        = self.backgroundColor;
                nar.tintColor           = theme != 1?daycolor:night;
                nar.titleTextAttributes = @{NSForegroundColorAttributeName:theme != 1?daycolor:night};
                [[UIApplication sharedApplication] setStatusBarStyle:
                 theme != 1?UIStatusBarStyleDefault:UIStatusBarStyleLightContent];
            }
        }];
        [[ZYTopicColorManager sharedTheSingletion] bindTheme];
        return self;
    };
}
- (void)setSetBackgroundColor:(UIView *(^)(UIColor *dayColor,UIColor *night))setBackgroundColor{};


@end
