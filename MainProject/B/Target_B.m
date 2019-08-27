//
//  Target_B.m
//  MainProject
//
//  Created by yankang on 2019/8/27.
//  Copyright © 2019 yankang. All rights reserved.
//

#import "Target_B.h"
#import "BViewController.h"

@implementation Target_B

- (UIViewController *)Action_viewController:(NSMutableDictionary *)params {
    BViewController *b_viewController = [[BViewController alloc]init];
    b_viewController.params = [params copy];
    return b_viewController;
}

@end
