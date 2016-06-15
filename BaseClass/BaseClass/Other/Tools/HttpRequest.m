//
//  HttpRequest.m
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import "HttpRequest.h"
static HttpRequest *netWorking;
@implementation HttpRequest
+ (instancetype)netWorking{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        netWorking = [[HttpRequest alloc] init];
    });
    return netWorking;
}

@end
