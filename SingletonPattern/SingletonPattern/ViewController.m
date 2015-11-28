//
//  ViewController.m
//  SingletonPattern
//
//  Created by YouXianMing on 15/9/29.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "UserInfoManagerCenter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    //管理中心  信息共享
    UserInfoManagerCenter *center = [UserInfoManagerCenter managerCenter];
    NSLog(@"%@", center.name);
}

@end
