//
//  ZYCellDataAdapter.h
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYCellDataAdapter : NSObject
/**
 *  cell重用标示符
 */
@property (nonatomic, strong) NSString            *cellReuseIdentifier;
/**
 *  cell数据源
 */
@property (nonatomic, strong) id                  data;
/**
 *  cell高度
 */
@property (nonatomic        ) CGFloat             cellHeight;
/**
 *  cell类型
 */
@property (nonatomic        ) NSInteger           cellType;

+ (ZYCellDataAdapter *)cellDataAdapterWithCellReuseIdentifier:(NSString *)cellReuseIdentifiers
                                                          data:(id)data
                                                    cellHeight:(CGFloat)cellHeight
                                                      cellType:(NSInteger)cellType;

#pragma mark - Optional properties.

/**
 *  The tableView.
 */
@property (nonatomic, weak)   UITableView  *tableView;

/**
 *  TableView's indexPath.
 */
@property (nonatomic, weak)   NSIndexPath  *indexPath;
@end
