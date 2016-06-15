//
//  CommenMethod.h
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MBProgressHUD/MBProgressHUD.h>
@interface CommenMethod : NSObject
//转换16进制颜色
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;
//读取文件
+(NSMutableDictionary *)readAccountPlist;
//写入文件
+(void)writeAccountPlist:(NSMutableDictionary *)dic;

+(NSString *)timeIntToString:(NSInteger)seconds;

+(void)showLoading;
+(void)showLoadingWithTitle:(NSString *)title;
+(void)hideLoading;
+(void)showToastWithView:(UIView *)view text:(NSString *)text delay:(int)time;
@end
