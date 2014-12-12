//
//  ViewController.m
//  51job
//
//  Created by Michael on 12/12/14.
//  Copyright (c) 2014 Lai. All rights reserved.
//

#import "MainViewController.h"
#import "MainButton.h"
#import "TheMoreViewController.h"

#define TheMoreTablViewController @"TheMoreTablViewController"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
	[super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


- (IBAction)touchTheMoreBtn:(MainButton *)sender {
	UIViewController *dest = [[UIStoryboard storyboardWithName:TheMore bundle:nil] instantiateInitialViewController];
//	UIStoryboardSegue *segue = [UIStoryboardSegue segueWithIdentifier:TheMoreTablViewController source:self destination:dest performHandler:^{
//		NSLog(@"touchTheMoreBtn -> performHandler");
//	}];
//	[self.navigationController prepareForSegue:segue sender:sender];
//	[self.view.superview addSubview:dest.view];
//	[self.view removeFromSuperview];
	
	//TODO: 返回键的文字修改
	
	self.navigationItem.backBarButtonItem.title = @"1111111111111";
	
	[self.navigationController pushViewController:dest animated:YES];
	
}


@end
