//
//  ZYReactive.h
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ZYReactive <NSObject>
//用于绑定viewModel
- (void)bindViewModel:(id)viewModel;

@end

/**
 *  定义主题风格
 */
typedef enum {
    dayTime =1,//白天
    nightTime//夜间
}ZYTopicModel;

@protocol ZYTopicProcotol <NSObject>
//主题切换
//所有可以更换主题的界面必须遵守这个协议调用并实现如下方法
//将视图中控件的颜色摄住部分全部放在这个方法中
@required
- (void)useTopicToCreatVeiwWithModel;
@end


