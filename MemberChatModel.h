//
//  MemberChatModel.h
//  EasyDb
//
//  Created by 刘仰清 on 2017/8/18.
//  Copyright © 2017年 HearMe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JKDBModel.h"
@interface MemberChatModel : JKDBModel

@property (nonatomic,copy)NSString * memberGuid;        //用户Guid
@property (nonatomic,copy)NSString * userGroupNickName; //用户群昵称
@property (nonatomic,copy)NSString * nickName;          //用户昵称
@property (nonatomic,copy)NSString * avatar;            //用户头像


@end
