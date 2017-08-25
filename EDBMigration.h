//
//  EDBMigration.h
//  EasyDb
//
//  Created by 刘仰清 on 2017/8/25.
//  Copyright © 2017年 HearMe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDBMigrationManager.h"

@interface EDBMigration : NSObject<FMDBMigrating>

@property (nonatomic,strong, readonly) NSString *name;
@property (nonatomic,assign,readonly) uint64_t version;
@property (nonatomic,copy)NSArray *updateSqliteArray;

- (BOOL)migrateDatabase:(FMDatabase *)database error:(out NSError *__autoreleasing *)error;

- (instancetype)initWithName:(NSString *)myname version:(uint64_t)version andSqliteArray:(NSArray *)sqliteArray;

@end
