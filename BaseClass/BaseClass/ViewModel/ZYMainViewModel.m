//
//  ZYMainViewModel.m
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import "ZYMainViewModel.h"
#import "ZYCellDataAdapter.h"
#import "ZYDayCell.h"
#import "ZYBaseCell.h"
@interface ZYMainViewModel()
@property (nonatomic, strong) NSMutableArray *dataArray;

@end
@implementation ZYMainViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (void)updata
{
    ZYCellDataAdapter *dataAdaper = [ZYCellDataAdapter cellDataAdapterWithCellReuseIdentifier:@"ZYDayCell" data:@"白色" cellHeight:50 cellType:0];
       ZYCellDataAdapter *dataAdaper2 = [ZYCellDataAdapter cellDataAdapterWithCellReuseIdentifier:@"ZYNightCell" data:@"黑色" cellHeight:100 cellType:0];
    
    [self.dataArray addObject:dataAdaper];
    [self.dataArray addObject:dataAdaper2];
    [self.complete sendNext:@"YES"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZYCellDataAdapter *dataAdaper = self.dataArray[indexPath.row];
    ZYBaseCell *cell = [tableView dequeueReusableCellWithIdentifier:dataAdaper.cellReuseIdentifier forIndexPath:indexPath];
    cell.dataAdapter = dataAdaper;
    [cell loadContent];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZYCellDataAdapter *dataAdaper = self.dataArray[indexPath.row];
    return dataAdaper.cellHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZYBaseCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [cell selectCell];
}


- (RACSubject *)complete
{
    if (!_complete) {
        _complete = [RACSubject subject];
    }
    return _complete;
}


- (NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}


@end
