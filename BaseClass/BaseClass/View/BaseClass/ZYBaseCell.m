//
//  ZYBaseCell.m
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import "ZYBaseCell.h"

@implementation ZYBaseCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.setBackgroundColor(VIEWDAYCOLOR,VIEWNIGHTCOLOR);
        [self setupCell];
        [self buildSubview];
    }
    return self;
}

- (void)loadContent{
    
}

- (void)setupCell{
    
}
- (void)buildSubview{
    
    
}
- (void)selectCell{
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
