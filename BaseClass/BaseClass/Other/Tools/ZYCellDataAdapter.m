//
//  ZYCellDataAdapter.m
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import "ZYCellDataAdapter.h"

@implementation ZYCellDataAdapter
+ (ZYCellDataAdapter *)cellDataAdapterWithCellReuseIdentifier:(NSString *)cellReuseIdentifiers
                                                          data:(id)data
                                                    cellHeight:(CGFloat)cellHeight
                                                      cellType:(NSInteger)cellType {
    
    ZYCellDataAdapter *adapter    = [[self class] new];
    adapter.cellReuseIdentifier = cellReuseIdentifiers;
    adapter.data                = data;
    adapter.cellHeight          = cellHeight;
    adapter.cellType            = cellType;
    
    return adapter;
}
@end
