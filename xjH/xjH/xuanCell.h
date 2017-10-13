//
//  xuanCell.h
//  xjH
//
//  Created by user on 2017/10/13.
//  Copyright © 2017年 user. All rights reserved.
//

#import <UIKit/UIKit.h>
@class xuanModel;
@interface xuanCell : UITableViewCell
@property(nonatomic,weak)UIImageView *logo;
@property(nonatomic,weak)UILabel *company;
@property(nonatomic,weak)UILabel *universityShortName;
@property(nonatomic,weak)UILabel *address;
@property(nonatomic,weak)UILabel *holdTime;
@property(nonatomic,weak)xuanModel *xuan;
@end
