//
//  ViewController.m
//  xjH
//
//  Created by user on 2017/10/13.
//  Copyright © 2017年 user. All rights reserved.
//

#import "ViewController.h"
#import "MJRefresh.h"
#import "AFNetworking.h"
#import "xuanCell.h"
#import "xuanModel.h"

@interface ViewController (){
//    NSMutableArray *datas;
}
@property(nonatomic,strong)NSMutableArray *datas;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 100;
    //下拉刷新
    MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(reload)];
    self.tableView.mj_header = header;
    //导航栏下自动隐藏
    header.automaticallyChangeAlpha = YES;
    //隐藏刷新时间
    header.lastUpdatedTimeLabel.hidden = YES;
    [header beginRefreshing];
}

-(void)reload{
    /*
     AFN拉取数据加载到datas
     */
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    ((AFJSONResponseSerializer *)manager.responseSerializer).removesKeysWithNullValues = YES;//
    [manager GET:@"https://api.haitou.cc/xjh/list" parameters:nil progress:nil
         success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
             self.datas=[[NSMutableArray alloc]init];
             for (NSDictionary *eachDic in responseObject[@"data"]) {
                 xuanModel *xjh=[[xuanModel alloc]initWithDic:eachDic];
                 [self.datas addObject:xjh];
             }
//             NSLog(@"%@",datas[0]);
             //表格重新加载数据
             [self.tableView reloadData];
             //上拉结束刷新
             [self.tableView.mj_header endRefreshing];
         } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
             NSLog(@"%@",error);
         }];
}

#pragma mark - UITableViewController

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.datas.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

//防止遮挡导航栏
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 20;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"xjh";
    xuanCell *cell = [tableView dequeueReusableHeaderFooterViewWithIdentifier:ID];
    if(cell == nil){
        cell = [[xuanCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    /*加载数据*/
    xuanModel *source = self.datas[indexPath.section];
//    cell.xuan = self.datas[indexPath.section];
    cell.xuan = source;
    return cell;
}

@end
