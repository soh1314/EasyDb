//
//  GroupChatModel.h
//  EasyDb
//
//  Created by 刘仰清 on 2017/8/18.
//  Copyright © 2017年 HearMe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JKDBModel.h"

@interface GroupChatModel : JKDBModel
@property (nonatomic,copy)NSString * guid;              //群Guid
@property (nonatomic,copy)NSString * groupName;         //群名称
@property (nonatomic,copy)NSString * faceURL;           //群头像
@property (nonatomic,copy)NSString * ownerMemberGuid;   //群主MemberGuid
@property (nonatomic,copy)NSString * groupNotification; //群通知
@property (nonatomic,copy)NSString * groupDesc;         //群描述
@property (nonatomic,copy)NSString * gid;               //群极光ID
@property (nonatomic,copy)NSString * groupType;         //群类型
@property (nonatomic,copy)NSString * groupLevel;        //群等级
@property (nonatomic,copy)NSString * memberNum;         //群成员数量
@property (nonatomic,copy)NSString * topFlag;           //置顶标识
@property (nonatomic,copy)NSString * silenceFlag;       //消息不通知
@property (nonatomic,copy)NSString * showNickNameFlag;  //显示群昵称
@property (nonatomic,copy)NSString * autoDeleteFlag;    //消息自动删除
@property (nonatomic,strong)NSData * memberInfo;         //成员信息


@end
