//
//  xuanModel.m
//  xjH
//
//  Created by user on 2017/10/13.
//  Copyright © 2017年 user. All rights reserved.
//

#import "xuanModel.h"

@implementation xuanModel
-(instancetype)initWithDic:(NSDictionary*)Dic{
    self = [super init];
    if (self) {
        self.address = Dic[@"address"];
        self.assocLiveId = Dic[@"assocLiveId"];
        self.clicks = Dic[@"clicks"];
        self.company = Dic[@"company"];
        self.company_id = Dic[@"company_id"];
        self.holdtime = Dic[@"holdtime"];
        self.iD = Dic[@"id"];
        self.isExpired = Dic[@"isExpired"];
        self.isSaved = Dic[@"isSaved"];
        self.is_cancel = Dic[@"is_cancel"];
        self.is_official = Dic[@"is_official"];
        self.logoUrl = Dic[@"logoUrl"];
        self.title = Dic[@"title"];
        self.totalClicks = Dic[@"totalClicks"];
        self.univ_id = Dic[@"univ_id"];
        self.universityShortName = Dic[@"universityShortName"];
        self.zone = Dic[@"zone"];
    }
    return self;
};

@end
