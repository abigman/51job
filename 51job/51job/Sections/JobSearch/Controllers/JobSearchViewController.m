//
//  JobSearchViewController.m
//  51job
//
//  Created by Michael on 12/14/14.
//  Copyright (c) 2014 Lai. All rights reserved.
//

#import "JobSearchViewController.h"
#import "SearchViewController.h"
@import CoreText;

@interface JobSearchViewController() <UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate>

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation JobSearchViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.title = JOB_SEARCH_TITLE_STRING;
	UIBarButtonItem *mapSearch = [[UIBarButtonItem alloc] initWithTitle:MAP_SEARCH_TITLE_STRING style:UIBarButtonItemStylePlain target:self action:@selector(mapSearch)];
	self.navigationItem.rightBarButtonItem = mapSearch;
	

}

- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar {
	SearchViewController *search = [[UIStoryboard storyboardWithName:@"Search" bundle:nil] instantiateInitialViewController];
	[self.navigationController pushViewController:search animated:YES];
	return NO;
}

- (void)mapSearch {

}

//- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
//	[self.searchBar endEditing:YES];
//}

#pragma mark - TableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return NUMBER_OF_SECTION;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	if (section == 0) {
		return 4;
	} else {
		return 1;
	}
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//	if (indexPath.section == 0) {
		static NSString *StaticCell = @"StaticCell";
		UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:StaticCell];
		if (!cell) {
			cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:StaticCell];
		}
		cell.textLabel.text = @"1";
//	}
	return cell;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	[self.searchBar endEditing:YES];
	return indexPath;
}

@end
