//
//  SystemConfigureViewController.m
//  51job
//
//  Created by Michael on 12/12/14.
//  Copyright (c) 2014 Lai. All rights reserved.
//

#import "SystemConfigureViewController.h"

@interface SystemConfigureViewController ()

@end

@implementation SystemConfigureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
	if (selectedCell.tag == CLEAN_CACHE_TAG) {
		UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"确定要清除所有缓存数据吗？" preferredStyle:UIAlertControllerStyleAlert];
		UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消"
														 style:UIAlertActionStyleDefault
													   handler:nil];
		[alert addAction:cancel];
		UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定"
													 style:UIAlertActionStyleDefault
												   handler:^(UIAlertAction * action) {
													   NSLog(@"%@", action);
															  }];
		[alert addAction:ok];
		[self presentViewController:alert animated:YES completion:nil];
	}
}
@end
