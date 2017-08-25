//
//  EDBMigration.m
//  EasyDb
//
//  Created by 刘仰清 on 2017/8/25.
//  Copyright © 2017年 HearMe. All rights reserved.
//

#import "EDBMigration.h"

@implementation EDBMigration

- (instancetype)initWithName:(NSString *)myname version:(uint64_t)version andSqliteArray:(NSArray *)sqliteArray {
    if (self = [super init]) {
        _name = [myname copy];
        _version = version;
        _updateSqliteArray = [sqliteArray copy];
    }
    return self;
}

- (BOOL)migrateDatabase:(FMDatabase *)database error:(out NSError *__autoreleasing *)error {
    for (NSString *sqlite in self.updateSqliteArray) {
        [database executeUpdate:sqlite];
    }
    if (!error) {
        return YES;
    } else {
        return NO;
    }
}

@end
