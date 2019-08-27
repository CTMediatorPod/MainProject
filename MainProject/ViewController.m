//
//  ViewController.m
//  MainProject
//
//  Created by yankang on 2019/8/27.
//  Copyright © 2019 yankang. All rights reserved.
//

#import "ViewController.h"
#import <A_Category/CTMediator+A.h>

@interface ViewController ()

@property(nonatomic,strong)UIButton  *button;

@end

@implementation ViewController



#pragma mark ---- life cycle----

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.button];

}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    
}


- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    self.button.frame = CGRectMake(0, 0, 160, 60);
    self.button.center = self.view.center;
    
}



#pragma mark ---event private methods---
- (void)buttonPressed:(UIButton *)button {
//    AViewController *a_viewController = [[AViewController alloc]init];
   UIViewController *viewController = [[CTMediator sharedInstance]A_aViewController];
    [self.navigationController pushViewController:viewController animated:YES];
}



#pragma mark ---getter setter---
- (UIButton *)button {
    if (_button == nil) {
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        _button.backgroundColor = [UIColor greenColor];
        [_button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_button setTitle:@"push to AViewController" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}







@end
