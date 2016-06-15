//
//  CommenMethod.m
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import "CommenMethod.h"

@implementation CommenMethod
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert {
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    // String should be 6 or 8 characters
    
    if ([cString length] < 6) return [UIColor blackColor];
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if ([cString length] != 6) return [UIColor blackColor];
    
    // Separate into r, g, b substrings
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
}

+(NSMutableDictionary *)readAccountPlist{
    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *plistPath1 = [paths objectAtIndex:0];
    //得到完整的文件名
    NSString *filename=[plistPath1 stringByAppendingPathComponent:@"AccountPlist.plist"];
    NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithContentsOfFile:filename];
    return data;
}

+(void)writeAccountPlist:(NSMutableDictionary *)dic{
    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *plistPath1 = [paths objectAtIndex:0];
    //得到完整的文件名
    NSString *filename=[plistPath1 stringByAppendingPathComponent:@"AccountPlist.plist"];
    if(![[NSFileManager defaultManager]fileExistsAtPath:filename]){
        //        [[NSFileManager defaultManager] createDirectoryAtPath:filename withIntermediateDirectories:YES attributes:nil error:nil];
        [[NSFileManager defaultManager] createFileAtPath:filename contents:nil attributes:nil];
    }
    
    //    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"AccountPlist" ofType:@"plist"];
    BOOL success = [dic writeToFile:filename atomically:YES];
    NSLog(@"%hhd",success);
}

+(void)showLoading{
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:keyWindow];
    HUD.detailsLabelFont = HUD.labelFont;
    HUD.detailsLabelText = @"加载中...";
    HUD.mode = MBProgressHUDModeIndeterminate;
    [keyWindow addSubview:HUD];
    [HUD show:YES];
}

+(void)showLoadingWithTitle:(NSString *)title{
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:keyWindow];
    HUD.detailsLabelFont = HUD.labelFont;
    HUD.detailsLabelText = title;
    HUD.mode = MBProgressHUDModeIndeterminate;
    [keyWindow addSubview:HUD];
    [HUD show:YES];
}

+(void)hideLoading{
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    for (int i = 0; i < keyWindow.subviews.count; i++) {
        UIView *view = keyWindow.subviews[i];
        if([view isKindOfClass:[MBProgressHUD class]]){
            [view removeFromSuperview];
            break;
        }
    }
}

+(void)showToastWithView:(UIView *)view text:(NSString *)text delay:(int)time{
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:view];
    [view addSubview:HUD];
    HUD.detailsLabelFont = HUD.labelFont;
    HUD.detailsLabelText = text;
    HUD.mode = MBProgressHUDModeText;
    
    //指定距离中心点的X轴和Y轴的偏移量，如果不指定则在屏幕中间显示
    //    HUD.yOffset = 150.0f;
    //    HUD.xOffset = 100.0f;
    
    [HUD showAnimated:YES whileExecutingBlock:^{
        sleep(time);
    } completionBlock:^{
        [HUD removeFromSuperview];
    }];
    
}


+(NSString *)timeIntToString:(NSInteger)seconds{
    NSString *time = @"";
    NSInteger hour = seconds/3600;
    NSInteger minute = 0;
    NSInteger second = 0;
    if(hour > 0){
        time = [time stringByAppendingString:[NSString stringWithFormat:@"%ld",(long)hour]];
        minute = (seconds - hour * 3600) / 60;
        time = [time stringByAppendingString:[NSString stringWithFormat:@":%02ld",(long)minute]];
        second = seconds%60;
        time = [time stringByAppendingString:[NSString stringWithFormat:@":%02ld",(long)second]];
    }else{
        minute = seconds / 60;
        time = [time stringByAppendingString:[NSString stringWithFormat:@"%02ld",(long)minute]];
        second = seconds%60;
        time = [time stringByAppendingString:[NSString stringWithFormat:@":%02ld",(long)second]];
    }
    return time;
}


@end
