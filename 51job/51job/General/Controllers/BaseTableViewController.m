//
//  BaseNavigationController.m
//  51job
//
//  Created by Michael on 12/18/14.
//  Copyright (c) 2014 Lai. All rights reserved.
//

#import "BaseTableViewController.h"

@implementation BaseTableViewController

- (void)viewDidLoad {
	UIBarButtonItem *returnButtonItem = [[UIBarButtonItem alloc] init];
	returnButtonItem.title = @"";
	self.navigationItem.backBarButtonItem = returnButtonItem;
}

@end
