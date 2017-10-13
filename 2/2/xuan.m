//
//  xuan.m
//  2
//
//  Created by user on 2017/10/12.
//  Copyright © 2017年 user. All rights reserved.
//

#import "xuan.h"

@implementation xuan
-(instancetype)initWithDic:(NSDictionary *)dic{
    self=[super init];
    if (self) {
        self.address=dic[@"address"];
        self.assocLiveId=dic[@"assocLiveId"];
        self.clicks=dic[@"clicks"];
        self.company=dic[@"copamy"];
        self.company_id=dic[@"company_id"];
        self.holdtime=dic[@"holdtime"];
        self.iD=dic[@"id"];
        self.isExpired=dic[@"isExpired"];
        self.isSaved=dic[@"isSaved"];
        self.is_cancel=dic[@"is_cancel"];
        self.is_official=dic[@"is_official"];
        self.logoUrl=dic[@"logoUrl"];
        self.title=dic[@"title"];
        self.totalClicks=dic[@"totalClicks"];
        self.univ_id=dic[@"univ_id"];
        self.universityShortName=dic[@"universityShortName"];
        self.zone=dic[@"zone"];
    }
    return self;
}
@end
