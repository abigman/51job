//
//  MainNavigationViewController.m
//  51job
//
//  Created by Michael on 12/12/14.
//  Copyright (c) 2014 Lai. All rights reserved.
//

#import "MainNavigationViewController.h"

@interface MainNavigationViewController ()

@end

@implementation MainNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.title = @"";
	UIImage *srcBgImg = [UIImage imageNamed:@"common_button_default"];
	UIImage *dstBgImg = [srcBgImg stretchableImageWithLeftCapWidth:srcBgImg.size.width * 0.5 topCapHeight:srcBgImg.size.height * 0.5];
	[self.navigationBar setBackgroundImage:dstBgImg forBarMetrics:UIBarMetricsDefault];
	
	self.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
//	self.navigationItem.rightBarButtonItem.tintColor = [UIColor whiteColor];
//	self.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
//	
//	[[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
//														   [UIColor whiteColor], NSForegroundColorAttributeName, [UIFont boldSystemFontOfSize:18], NSFontAttributeName, nil]];
	[self.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
												[UIColor whiteColor], NSForegroundColorAttributeName, [UIFont boldSystemFontOfSize:18], NSFontAttributeName, nil]];
	
	self.navigationBar.tintColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
 
}


@end
