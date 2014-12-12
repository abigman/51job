//
//  ChangeSkinTableViewController.m
//  51job
//
//  Created by Michael on 12/12/14.
//  Copyright (c) 2014 Lai. All rights reserved.
//

#import "ChangeSkinTableViewController.h"

@interface ChangeSkinTableViewController ()

@end

@implementation ChangeSkinTableViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.clearsSelectionOnViewWillAppear = NO;
	self.navigationItem.rightBarButtonItem = self.editButtonItem;
	
	self.title = CHANGE_SKIN_TITLE;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
