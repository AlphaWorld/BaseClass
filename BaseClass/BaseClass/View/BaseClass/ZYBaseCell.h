//
//  ZYBaseCell.h
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZYCellDataAdapter;
@interface ZYBaseCell : UITableViewCell
/**
 *  CustomCell's data.
 */
@property (nonatomic, weak) ZYCellDataAdapter         *dataAdapter;

/**
 *  CustomCell's data.
 */
@property (nonatomic, weak) id                       data;

/**
 *  CustomCell's indexPath.
 */
@property (nonatomic, weak) NSIndexPath             *indexPath;

/**
 *  TableView.
 */
@property (nonatomic, weak) UITableView             *tableView;

/**
 *  Controller.
 */
@property (nonatomic, weak) UIViewController        *controller;



- (void)loadContent;
- (void)setupCell;
- (void)buildSubview;
@end
