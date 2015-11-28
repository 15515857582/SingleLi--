//
//  UserInfoManagerCenter.m
//  SingletonPattern
//
//  Created by YouXianMing on 15/9/29.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "UserInfoManagerCenter.h"

@implementation UserInfoManagerCenter

//+ (void)initialize {
//    
//    static UserInfoManagerCenter *center = nil;
//    
//    if (self == [UserInfoManagerCenter class]) {
//        
//        center = [[UserInfoManagerCenter alloc] init];
//    }
//}

//+ (instancetype)managerCenter {
//
//    static UserInfoManagerCenter *center = nil;
//    
//    if (center == nil) {
//        
//        center = [[UserInfoManagerCenter alloc] init];
//    }
//    
//    return center;
//}

+ (instancetype)managerCenter {
    
    static UserInfoManagerCenter *center = nil;
    
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
    
        center = [[UserInfoManagerCenter alloc] init];
    });
    
    return center;
}

@end
