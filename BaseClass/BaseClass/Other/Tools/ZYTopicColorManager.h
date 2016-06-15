//
//  ZYTopicColorManager.h
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYTopicColorManager : NSObject
+ (instancetype)sharedTheSingletion;
@property (nonatomic, strong) RACSubject *colorTopic;
@property (nonatomic, assign) NSInteger theme;

- (void)bindTheme;

@end
