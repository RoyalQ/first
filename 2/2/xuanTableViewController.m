//
//  xuanTableViewController.m
//  2
//
//  Created by user on 2017/10/9.
//  Copyright © 2017年 user. All rights reserved.
//

#import "xuanTableViewController.h"
#import "xuanTableViewCell.h"
#import "xuan.h"
#import "AFNetworking.h"

@interface xuanTableViewController ()
@property(nonatomic,strong)NSMutableArray *dataArray;
@end

@implementation xuanTableViewController

NSString *ls=@"id";
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight=120;
    //[self.tableView registerClass:[xuanTableViewCell class] forCellReuseIdentifier:ls];
    NSString *URL=@"https://api.haitou.cc/xjh/list";
    self.dataArray=[[NSMutableArray alloc]init];
    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
    ((AFJSONResponseSerializer *)manager.responseSerializer).removesKeysWithNullValues = YES;
    [manager GET:URL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        for(NSDictionary*zidian in responseObject[@"data"]){
            xuan *xuanjiang=[[xuan alloc]initWithDic:zidian];
            [self.dataArray addObject:xuanjiang];
            
            NSLog(@"%@",_dataArray);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
         NSLog(@"网络超时");
    }];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
     return 40;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     xuanTableViewCell *cell = [[xuanTableViewCell alloc] init];
  
    //xuanTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ls];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    if (cell == nil) {
    
        cell = [[xuanTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ls];
    }
    //加载数据
    //xuan *xuanjiang=self.dataArray[indexPath.section];
     //cell.md.address=xuanjiang
    return cell;
}

//防止遮挡导航栏
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 20;
}/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
