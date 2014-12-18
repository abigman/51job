//
//  LoginViewController.m
//  51job
//
//  Created by Michael on 12/13/14.
//  Copyright (c) 2014 Lai. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController () <UITextFieldDelegate, UIScrollViewDelegate, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (weak, nonatomic) IBOutlet UITextField *testView;

@end

@implementation LoginViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.title = LOGIN_TITLE;
	
	UIBarButtonItem *registerButton = [[UIBarButtonItem alloc] initWithTitle:REGISTER_STRING style:UIBarButtonItemStylePlain target:self action:@selector(userRegister)];
	self.navigationItem.rightBarButtonItem = registerButton;
	
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardWillChangeFrame:) name:UIKeyboardWillChangeFrameNotification object:nil];

//	[self.view addGestureRecognizer:[UITapGestureRecognizer alloc]];
	
	UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapTableView:)];
	[self.tableview addGestureRecognizer:recognizer];
	
	self.testView.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 0)];
	self.testView.leftViewMode = UITextFieldViewModeAlways;
	self.testView.delegate = self;
	
	self.testView.layer.shadowColor = [UIColor purpleColor].CGColor;
	self.testView.layer.shadowOffset = CGSizeMake(10, 10);
	self.testView.layer.shadowOpacity = 1;
	
	
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	NSLog(@"%@ - %@", NSStringFromSelector(_cmd), textField.text);
	return	YES;
}

- (void)tapTableView:(UITapGestureRecognizer *)recognizer {
	[self.view endEditing:YES];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	[self.view endEditing:YES];
}



- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)dealloc {
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}

//- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
////	[tableView endEditing:YES];
//	return indexPath;
//}

- (void)keyBoardWillChangeFrame:(NSNotification *)note {
//	self.view.window.backgroundColor 
	CGRect rect = [note.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
	CGFloat transformY = rect.origin.y - self.view.bounds.size.height;
	CGFloat duration = [note.userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue];
	
	[UIView animateWithDuration:duration animations:^{
		self.view.transform = CGAffineTransformMakeTranslation(0, transformY);
	}];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
//	[self.view endEditing:YES];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
	//	NSLog(@"%@",textField.textInputView);
	//	NSLog(@"%@",textField.inputView);
	
}


#pragma mark - 用户注册
#pragma 注册
- (void)userRegister {
	
}

@end
