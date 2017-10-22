//
//  xuanModel.h
//  xjH
//
//  Created by user on 2017/10/13.
//  Copyright © 2017年 user. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface xuanModel : NSObject
@property(nonatomic,copy)NSString *address;
@property(nonatomic,copy)NSString *assocLiveId;
@property(nonatomic,copy)NSString *clicks;
@property(nonatomic,copy)NSString *company;
@property(nonatomic,copy)NSString *company_id;
@property(nonatomic,copy)NSString *holdtime;
@property(nonatomic,copy)NSString *iD;
@property(nonatomic,copy)NSString *isExpired;
@property(nonatomic,copy)NSString *isSaved;
@property(nonatomic,copy)NSString *is_cancel;
@property(nonatomic,copy)NSString *is_official;
@property(nonatomic,copy)NSString *logoUrl;
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *totalClicks;
@property(nonatomic,copy)NSString *univ_id;
@property(nonatomic,copy)NSString *universityShortName;
@property(nonatomic,copy)NSString *zone;
-(instancetype)initWithDic:(NSDictionary*)Dic;
@end
