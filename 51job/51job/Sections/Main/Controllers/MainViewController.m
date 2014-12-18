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
#import "UINavigationItem+CustomItem.h"
#import "MainSearchBar.h"
#import "CustomBarItem.h"
#import "JobSearchViewController.h"

#define FONT_SIZE 16

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	UIBarButtonItem *returnButtonItem = [[UIBarButtonItem alloc] init];
	returnButtonItem.title = @"";
	self.navigationItem.backBarButtonItem = returnButtonItem;
	
	MainSearchBar *searchBar = [[MainSearchBar alloc] initWithFrame:CGRectMake(0, 0, 120, 28)];
	searchBar.placeholder = SEARCH_TEXTFIELD_STRING;
	[self.navigationItem setItemWithCustomView:searchBar itemType:CustomBarItemTypeCenter];
	
	CustomBarItem *loginBtn = [CustomBarItem itemWithTitle:@"登录" textColor:[UIColor whiteColor] fontSize:FONT_SIZE itemType:CustomBarItemTypeRight];
	[self.navigationItem addCustomBarItems:@[loginBtn] itemType:CustomBarItemTypeRight];
	
	CustomBarItem *areaBtn = [CustomBarItem itemWithTitle:@"全国" textColor:[UIColor whiteColor] fontSize:FONT_SIZE itemType:CustomBarItemTypeLeft];
	[self.navigationItem addCustomBarItems:@[areaBtn] itemType:CustomBarItemTypeLeft];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	[self.navigationController.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//	self.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
//}

- (IBAction)touchTheMoreBtn:(MainButton *)sender {
	UIViewController *dest = [[UIStoryboard storyboardWithName:TheMore bundle:nil] instantiateInitialViewController];
	[self.navigationController pushViewController:dest animated:YES];
}

- (IBAction)touchJobSearchBtn:(MainButton *)sender {
	UIViewController *dest = [[UIStoryboard storyboardWithName:JOB_SEARCH_STORYBOARD_NAME bundle:nil] instantiateInitialViewController];
	[self.navigationController pushViewController:dest animated:YES];
}

@end
