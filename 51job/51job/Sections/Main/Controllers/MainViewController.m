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

#define TheMoreTablViewController @"TheMoreTablViewController"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	MainSearchBar *searchBar = [[MainSearchBar alloc] initWithFrame:CGRectMake(0, 0, 120, 28)];
	searchBar.searchBarStyle = UISearchBarStyleMinimal;
	searchBar.placeholder = SEARCH_TEXTFIELD_STRING;
	[self.navigationItem setItemWithCustomView:searchBar itemType:CustomBarItemTypeCenter];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	[self.navigationController.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


- (IBAction)touchTheMoreBtn:(MainButton *)sender {
	UIViewController *dest = [[UIStoryboard storyboardWithName:TheMore bundle:nil] instantiateInitialViewController];
	
	//TODO: 返回键的文字修改
	
	self.navigationItem.backBarButtonItem.title = @"1111111111111";
	
	[self.navigationController pushViewController:dest animated:YES];
	
}


@end
