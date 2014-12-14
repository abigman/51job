//
//  MainSearchBar.m
//  51job
//
//  Created by Michael on 12/14/14.
//  Copyright (c) 2014 Lai. All rights reserved.
//

#import "MainSearchBar.h"

@implementation MainSearchBar

- (void)layoutSubviews {
	UITextField *searchField;
	NSUInteger numViews = [self.subviews count];
	for(int i = 0; i < numViews; i++) {
		if([[self.subviews objectAtIndex:i] isKindOfClass:[UITextField class]]) {
			searchField = [self.subviews objectAtIndex:i];
		}
	}
	if(searchField) {
		searchField.textColor = [UIColor redColor];
		UIImage *srcBgImg = [UIImage imageNamed:@"home_search_bg"];
		UIImage *dstBgImg = [srcBgImg stretchableImageWithLeftCapWidth:srcBgImg.size.width * 0.5 topCapHeight:srcBgImg.size.height * 0.5];
		[searchField setBackground:dstBgImg];
		[searchField setBorderStyle:UITextBorderStyleRoundedRect];
	}
	[super layoutSubviews];
}

@end
