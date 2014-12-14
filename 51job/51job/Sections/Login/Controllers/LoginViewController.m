//
//  LoginViewController.m
//  51job
//
//  Created by Michael on 12/13/14.
//  Copyright (c) 2014 Lai. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.title = LOGIN_TITLE;
	
	UIBarButtonItem *registerButton = [[UIBarButtonItem alloc] initWithTitle:REGISTER_STRING style:UIBarButtonItemStylePlain target:self action:@selector(userRegister)];
	self.navigationItem.rightBarButtonItem = registerButton;
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - 用户注册
#pragma 注册
- (void)userRegister {
	
}

@end
