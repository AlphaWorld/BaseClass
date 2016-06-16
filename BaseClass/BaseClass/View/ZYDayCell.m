//
//  ZYDayCell.m
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import "ZYDayCell.h"
#import "ZYCellDataAdapter.h"
#import "ZYTopicColorManager.h"
@interface ZYDayCell()
@property (nonatomic, strong) UILabel *TitleLabel;

@end

@implementation ZYDayCell

- (void)loadContent{
    self.TitleLabel.text = self.dataAdapter.data;
}

- (void)setupCell{
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)buildSubview{
    self.TitleLabel = [[UILabel alloc] init];
    self.TitleLabel.setBackgroundColor(VIEWDAYCOLOR,VIEWNIGHTCOLOR);
    self.TitleLabel.textAlignment = NSTextAlignmentCenter;
    self.TitleLabel.layer.masksToBounds = YES;
    self.TitleLabel.layer.cornerRadius  = 5.0f;
    self.TitleLabel.layer.borderWidth = 0.5;
    self.TitleLabel.layer.masksToBounds = NO;
    self.TitleLabel.layer.shadowOffset  = CGSizeMake(0.0, 5.0);
    self.TitleLabel.layer.shadowOpacity = 5.0f;
    self.TitleLabel.layer.shadowRadius  = 0.5f;
    self.TitleLabel.layer.shadowColor = [[UIColor colorWithRed:1.000 green:0.400 blue:0.400 alpha:1.000] CGColor];
    [self.contentView addSubview:self.TitleLabel];
    
    [self.TitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(5);
        make.left.equalTo(self.contentView).offset(10);
        make.right.equalTo(self.contentView).offset(-10);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
    
}
- (void)selectCell{
    [ZYTopicColorManager sharedTheSingletion].theme = 0;
}


@end
