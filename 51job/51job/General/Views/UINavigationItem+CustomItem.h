//
//  UINavigationItem+CustomItem.h
//  CustomBarItemDemo
//
//  Created by wangtian on 14-11-22.
//  Copyright (c) 2014年 wangtian. All rights reserved.
//

@import UIKit;
#import "CustomBarItem.h"

@interface UINavigationItem (CustomItem)

- (CustomBarItem *)setItemWithTitle:(NSString *)title titleColor:(UIColor *)color fontSize:(CGFloat)font itemType:(CustomBarItemType)itemType;
- (CustomBarItem *)setItemWithImage:(NSString *)imageName size:(CGSize)size itemType:(CustomBarItemType)itemType;
- (void)addCustomBarItems:(NSArray *)array itemType:(CustomBarItemType)itemType;
- (CustomBarItem *)setItemWithCustomView:(UIView *)customView itemType:(CustomBarItemType)itemType;
@end