//
//  UIScrollView+Helpers.m
//  HealthKitDemo
//
//  Created by Richard Kirk on 8/18/15.
//  Copyright (c) 2015 Fly like a beagle. All rights reserved.
//

#import "UIScrollView+Helpers.h"

@implementation UIScrollView (Helpers)

- (void)scrollToBottom:(BOOL)animated
{
    CGFloat bottom = self.contentSize.height - self.bounds.size.height + self.contentInset.bottom;
    bottom = MAX(0, bottom);
    CGPoint bottomOffset = CGPointMake(0,bottom);

    [self setContentOffset:bottomOffset animated:animated];
}

@end
