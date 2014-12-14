//
//  CustomBarItem.m
//  CustomNavigatinItem
//
//  Created by wangtian on 14-11-22.
//  Copyright (c) 2014年 wangtian. All rights reserved.
//

#import "CustomBarItem.h"

#define DEFAULT_OFFSET                -10
#define TITLE_VIEW_SIZE CGSizeMake(100, 30)            //用NSString设置item时 item的尺寸
#define Size(view)                    view.frame.size

@interface CustomBarItem()

@property (nonatomic, strong) UIBarButtonItem *fixBarItem;
@property (nonatomic, strong) UIView          *contentBarItem;
@property (nonatomic, strong) NSMutableArray  *items;
@property (nonatomic, strong) UIButton        *itemDefaultChildView;

@end

@implementation CustomBarItem

#pragma mark - 静态构造

+ (CustomBarItem *)itemWithCustomView:(UIView *)customView itemType:(CustomBarItemType)itemType
{
	CustomBarItem *item = [[CustomBarItem alloc] init];
	[item initCustomItemWithType:itemType size:Size(customView)];
	[item setItemWithCustomView:customView];
	return item;
}

+ (CustomBarItem *)itemWithTitle:(NSString *)title textColor:(UIColor *)textColor fontSize:(CGFloat )fontSize itemType:(CustomBarItemType)itemType {
	CustomBarItem *item = [[CustomBarItem alloc] init];
	[item initCustomItemWithType:itemType size:TITLE_VIEW_SIZE];
	item.itemDefaultChildView = [UIButton buttonWithType:UIButtonTypeCustom];
	[item setItemWithCustomView:item.itemDefaultChildView];
	switch (itemType) {
		case CustomBarItemTypeLeft:
			[item.itemDefaultChildView setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
			break;
		case CustomBarItemTypeCenter:
			break;
		case CustomBarItemTypeRight:
			[item.itemDefaultChildView setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
			break;
		default:
			break;
	}
	[item.itemDefaultChildView setTitle:title forState:(UIControlStateNormal)];
	[item.itemDefaultChildView setTitleColor:textColor forState:(UIControlStateNormal)];
	[item.itemDefaultChildView.titleLabel setFont:[UIFont systemFontOfSize:fontSize]];
	return item;
}

+ (CustomBarItem *)itemWithImage:(NSString *)imageName size:(CGSize)size itemType:(CustomBarItemType)itemType
{
	CustomBarItem *item = [[CustomBarItem alloc] init];
	[item initCustomItemWithType:itemType size:size];
	item.itemDefaultChildView = [UIButton buttonWithType:UIButtonTypeCustom];
	[item setItemWithCustomView:item.itemDefaultChildView];
	[item.itemDefaultChildView setImage:[UIImage imageNamed:imageName] forState:(UIControlStateNormal)];
	return item;
}


#pragma mark - 动态构造

- (void)initCustomItemWithType:(CustomBarItemType)itemType size:(CGSize)size {
	self.itemType = itemType;
	self.items = [NSMutableArray array];
	self.contentBarItem = [[UIView alloc] initWithFrame:CGRectMake(0, 0, size.width, size.height)];
	if (itemType != CustomBarItemTypeCenter) {
		self.fixBarItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
		self.fixBarItem.width = DEFAULT_OFFSET;
		UIBarButtonItem *contentItem = [[UIBarButtonItem alloc] initWithCustomView:self.contentBarItem];
		[_items addObject:self.fixBarItem];
		[_items addObject:contentItem];
	} else {
		[_items addObject:self.contentBarItem];
	}
}

#pragma mark - 方法
- (CGSize)size {
	return self.contentBarItem.frame.size;
}

- (void)setItemWithCustomView:(UIView *)customView {
	customView.frame = self.contentBarItem.bounds;
	[self.contentBarItem addSubview:customView];
}

- (void)addTarget:(id)target selector:(SEL)selector event:(UIControlEvents)event {
	[self.itemDefaultChildView addTarget:target action:selector forControlEvents:event];
}

- (void)setOffset:(CGFloat)offSet {
	self.fixBarItem.width = -offSet;
}

- (void)setItemWithNavigationItem:(UINavigationItem *)navigationItem itemType:(CustomBarItemType)itemType {
	switch (itemType) {
		case CustomBarItemTypeLeft:
			[navigationItem setLeftBarButtonItems:self.items];
			break;
		case CustomBarItemTypeCenter:
			[navigationItem setTitleView:[self.items firstObject]];
			break;
		case CustomBarItemTypeRight:
			[navigationItem setRightBarButtonItems:self.items];
			break;
		default:
			break;
	}
}

- (void)setTitleViewSize:(CGSize)size {
	if (self.itemType == CustomBarItemTypeCenter) {
		[[self.items firstObject] setFrame:CGRectMake(0, 0, size.width, size.height)];
	} else {
		self.contentBarItem.frame = CGRectMake(0, 0, size.width, size.height);
	}
}

@end
