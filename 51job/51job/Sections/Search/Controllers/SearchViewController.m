//
//  CustomSearchDisplayController.m
//  51job
//
//  Created by Michael on 12/14/14.
//  Copyright (c) 2014 Lai. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController () <UISearchControllerDelegate, UISearchBarDelegate>

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation SearchViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.navigationController.navigationBar.hidden = YES;
//	self.searchBar.text = @" ";
//	self.searchBar.scopeBarBackgroundImage = nil;
}

- (void)updateSearchResultsForSearchController:(UISearchController *)searchController {
	
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
	[self.navigationController popViewControllerAnimated:YES];
	self.navigationController.navigationBar.hidden = NO;
}

- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar {
	searchBar.text = @"";
	return YES;
}

@end
