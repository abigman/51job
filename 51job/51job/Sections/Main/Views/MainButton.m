//
//  HomeButton.m
//  51job
//
//  Created by Michael on 12/12/14.
//  Copyright (c) 2014 Lai. All rights reserved.
//

#import "MainButton.h"

@implementation MainButton

- (void)layoutSubviews {
	[super layoutSubviews];
	self.titleLabel.textAlignment = NSTextAlignmentCenter;
	self.imageView.contentMode = UIViewContentModeScaleAspectFit;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect {
	return CGRectMake(0, 0, contentRect.size.width, contentRect.size.height * IMAGE_RATIO);
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
	CGFloat height = contentRect.size.height * IMAGE_RATIO;
	return CGRectMake(0, height, contentRect.size.width, contentRect.size.height - height);
}

@end
