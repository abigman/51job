//
//  UINavigationItem+CustomItem.m
//  CustomBarItemDemo
//
//  Created by wangtian on 14-11-22.
//  Copyright (c) 2014年 wangtian. All rights reserved.
//

#import "UINavigationItem+CustomItem.h"

@implementation UINavigationItem (CustomItem)

- (CustomBarItem *)setItemWithTitle:(NSString *)title titleColor:(UIColor *)color fontSize:(CGFloat)font itemType:(CustomBarItemType)itemType {
	CustomBarItem *item = [CustomBarItem itemWithTitle:title textColor:color fontSize:font itemType:itemType];
	[item setItemWithNavigationItem:self itemType:itemType];
	return item;
}

- (CustomBarItem *)setItemWithImage:(NSString *)imageName size:(CGSize)size itemType:(CustomBarItemType)itemType {
	CustomBarItem *item = [CustomBarItem itemWithImage:imageName size:size itemType:itemType];
	[item setItemWithNavigationItem:self itemType:itemType];
	return item;
}

- (CustomBarItem *)setItemWithCustomView:(UIView *)customView itemType:(CustomBarItemType)itemType {
	CustomBarItem *item = [CustomBarItem itemWithCustomView:customView itemType:itemType];
	[item setItemWithNavigationItem:self itemType:itemType];
	return item;
}

- (void)addCustomBarItems:(NSArray *)array itemType:(CustomBarItemType)itemType {
	NSMutableArray *mutableItems = [NSMutableArray array];
	for (CustomBarItem *barItem in array) {
		[mutableItems addObjectsFromArray:barItem.items];
	}
	switch (itemType) {
		case CustomBarItemTypeLeft:
			[self setLeftBarButtonItems:mutableItems];
			break;
		case CustomBarItemTypeCenter:
			break;
		case CustomBarItemTypeRight:
			[self setRightBarButtonItems:mutableItems];
			break;
		default:
			break;
	}
}

@end
