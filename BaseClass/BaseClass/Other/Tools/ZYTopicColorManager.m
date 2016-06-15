//
//  ZYTopicColorManager.m
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import "ZYTopicColorManager.h"
#import "CommenMethod.h"
@implementation ZYTopicColorManager
+ (instancetype)sharedTheSingletion{
    static ZYTopicColorManager *sharedModel = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedModel = [[ZYTopicColorManager alloc] init];

    });
    return sharedModel;
}

- (void)bindTheme{
    [RACObserve(self, theme) subscribeNext:^(id x) {
        [self.colorTopic sendNext:[NSNumber numberWithInteger:self.theme]];
    }];
}

- (RACSubject *)colorTopic
{
    if (!_colorTopic) {
        _colorTopic = [RACSubject subject];
    }
    return _colorTopic;
}

@end
