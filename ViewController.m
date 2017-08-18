//
//  ViewController.m
//  EasyDb
//
//  Created by 刘仰清 on 2017/8/18.
//  Copyright © 2017年 HearMe. All rights reserved.
//

#import "ViewController.h"
#import "GroupChatModel.h"
#import "MemberChatModel.h"
#import "JKDBHelper.h"
#import "NSData+EasyDB.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [JKDBHelper shareInstance];
    BOOL groupChatTable = [GroupChatModel createTable];
    BOOL memberChatTable = [MemberChatModel createTable];
    [self addData];
    [self selectData];
    [self deleteData];
    [self updateData];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)addData {
    MemberChatModel *model = [MemberChatModel new];
    model.memberGuid = @"210432"; model.nickName = @"小敏";
    model.userGroupNickName = @"被忘记的人";
    
    MemberChatModel *model2 = [MemberChatModel new];
    model2.memberGuid = @"432102"; model2.nickName = @"小青";
    model2.userGroupNickName = @"改不掉的毛病";
    
    MemberChatModel *model3 = [MemberChatModel new];
    model3.memberGuid = @"980765"; model3.nickName = @"小红";
    model3.userGroupNickName = @"退却的记忆";
    
    MemberChatModel *model4 = [MemberChatModel new];
    model4.memberGuid = @"980765"; model4.nickName = @"小蓝";
    model4.userGroupNickName = @"退却的记忆";
    
    GroupChatModel *group = [GroupChatModel new];
    group.guid = @"000001"; group.groupName = @"电影院";
    group.memberInfo = [NSData easyDB_jsonData:@{@"1":@"2"}];
    
    GroupChatModel *group2 = [GroupChatModel new];
    group2.guid = @"000002"; group2.groupName = @"直播间";
    group2.memberInfo = [NSData easyDB_jsonData:@{@"3":@"4"}];;
    
    [model saveOrUpdateByColumnName:@"memberGuid" AndColumnValue:model.memberGuid];
    [model2 saveOrUpdateByColumnName:@"memberGuid" AndColumnValue:model2.memberGuid];
    [model3 saveOrUpdateByColumnName:@"memberGuid" AndColumnValue:model3.memberGuid];
    [model4 saveOrUpdateByColumnName:@"memberGuid" AndColumnValue:model4.memberGuid];
    
    [group saveOrUpdateByColumnName:@"guid" AndColumnValue:group.guid];
    [group2 saveOrUpdateByColumnName:@"guid" AndColumnValue:group2.guid];
    
    
}

- (void)selectData {
    NSString *condition = [NSString stringWithFormat:@"where memberGuid = %@",@"210432"];
    NSArray *selectArr= [MemberChatModel findByCriteria:condition];
    NSLog(@"%@",selectArr);
    
    
    
}

- (void)deleteData {
    
}

- (void)updateData {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
