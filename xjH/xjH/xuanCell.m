//
//  xuanCell.m
//  xjH
//
//  Created by user on 2017/10/13.
//  Copyright © 2017年 user. All rights reserved.
//

#import "xuanCell.h"
#import "xuanModel.h"

@implementation xuanCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        //LOGO
        UIImageView *logo = [[UIImageView alloc]init];
        logo.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:(NSURL *)_xuan.logoUrl]];
        [self.contentView addSubview:logo];
        self.logo = logo;
        //公司名
        UILabel *company = [[UILabel alloc]init];
        company.text = _xuan.company;
        [self.contentView addSubview:company];
        self.company = company;
        //学校简称
        UILabel *universityShortName = [[UILabel alloc]init];
        universityShortName.text = _xuan.universityShortName;
        [self.contentView addSubview:universityShortName];
        self.universityShortName = universityShortName;
        //地址
        UILabel *address = [[UILabel alloc]init];
        address.text = _xuan.address;
        [self.contentView addSubview:address];
        self.address = address;
        //举行时间
        UILabel *holdTime = [[UILabel alloc]init];
        holdTime.text = _xuan.holdtime;
        [self.contentView addSubview:holdTime];
        self.holdTime = holdTime;
    }
    return self;
}

//设置frame
- (void)layoutSubviews
{
    [super layoutSubviews];
    //LOGO
    self.logo.frame = CGRectMake(0, 0, 100, 100);
//    self.logo.backgroundColor = [UIColor redColor];
    
    //公司名
    self.company.frame = CGRectMake(105, 0, self.contentView.frame.size.width-110, 20);
//    self.company.backgroundColor = [UIColor blueColor];
    
    //学校简称
    self.universityShortName.frame = CGRectMake(105, 42.5, 30, 15);
//    self.universityShortName.backgroundColor= [UIColor orangeColor];
    
    //地址
    self.address.frame = CGRectMake(145, 42.5, self.contentView.frame.size.width-150, 15);
//    self.address.backgroundColor = [UIColor yellowColor];
    
    //举行时间
    self.holdTime.frame = CGRectMake(105, 85, 150, 15);
//    self.holdTime.backgroundColor = [UIColor redColor];
}

@end
