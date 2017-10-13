//
//  xuanTableViewCell.m
//  2
//
//  Created by user on 2017/10/10.
//  Copyright © 2017年 user. All rights reserved.
//

#import "xuanTableViewCell.h"
#import "xuan.h"
@interface xuanTableViewCell ()

@property (nonatomic,weak) UIImageView *tupian;
@property (nonatomic,weak) UILabel *an;
@property (nonatomic,weak) UILabel *yi;
@property (nonatomic,weak) UILabel *er;
@property (nonatomic,weak) UILabel *san;

@end


@implementation xuanTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//添加子控件
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self=[super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        //图片
        UIImageView *tupian=[[UIImageView alloc]init];
        tupian.backgroundColor=[UIColor greenColor];
        [self.contentView addSubview:tupian];
        self.tupian=tupian;
        
        //公司
        UILabel *an=[[UILabel alloc]init];
        an.backgroundColor=[UIColor redColor];
        [self.contentView addSubview:an];
        self.an=an;
        
        //标题
        UILabel *yi=[[UILabel alloc]init];
        yi.backgroundColor=[UIColor yellowColor];
        [self.contentView addSubview:yi];
        self.yi=yi;
        
        UILabel *er=[[UILabel alloc]init];
        er.backgroundColor=[UIColor blueColor];
        [self.contentView addSubview:er];
        self.er=er;
        
        UILabel *san=[[UILabel alloc]init];
       san.backgroundColor=[UIColor purpleColor];
        [self.contentView addSubview:san];
        self.san=san;
    
    }
    return self;
}
/*-(instancetype)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:<#frame#>]){
        
            }
    return self;
}
*/

-(void)layoutSubviews
{
    [super layoutSubviews];
    CGFloat ix=0;
    CGFloat iy=0;
    CGFloat iw=120;
    CGFloat ih=self.contentView.frame.size.height-20;
    self.tupian.frame=CGRectMake(ix, iy, iw, ih);
    self.an.frame=CGRectMake(130,0 , 200, 20);
    self.yi.frame=CGRectMake(130,40 , 100, 20);
    self.er.frame=CGRectMake(240,40 , 100, 20);
    self.san.frame=CGRectMake(130, 70, 200, 20);
    self.an.text=_md.company;
     self.yi.text=_md.universityShortName;
    self.er.text=_md.address;
    self.san.text=_md.holdtime;
}
-(void)setMd:(xuan *)md{
    _md=md;
    self.yi.text=md.address;
}
@end
