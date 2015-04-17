//
//  UIScrollView+Pages.m
//
//  Created by Richard Kirk on 6/17/14.
//

#import "UIScrollView+Pages.h"

@implementation UIScrollView (Pages)

- (NSUInteger)verticalPageCount
{
    return self.contentSize.height / self.frame.size.height;
    
}


- (NSUInteger)horizontalPageCount
{
    return self.contentSize.width / self.frame.size.width;
}


- (NSUInteger)currentVerticalPage
{
    float fractionalPage = self.contentOffset.y / self.frame.size.height;
    return lround(fractionalPage);
}


- (NSUInteger)currentHorizontalPage
{
    float fractionalPage = self.contentOffset.x / self.frame.size.width;
    return lround(fractionalPage);
}


- (void)addVerticalPage
{
    self.contentSize = CGSizeMake(self.contentSize.width, self.contentSize.height + self.frame.size.height);
}

- (void)addHorizontalPage
{
    self.contentSize = CGSizeMake(self.contentSize.width + self.frame.size.width, self.contentSize.height);
}

- (void)scrollToHorizontalPage:(NSUInteger)page animated:(BOOL)animated
{
    CGPoint newOffset = CGPointMake(page * self.frame.size.width, self.contentOffset.y);
    [self setContentOffset:newOffset animated:animated];
}

- (BOOL)isOnLastHorizontalPage
{
    return [self currentHorizontalPage] == [self horizontalPageCount] - 1;
}


- (CGFloat)distancePastBottom
{
    CGFloat bottomEdge = self.contentOffset.y + self.frame.size.height;
    return bottomEdge - self.contentSize.height;
}



@end
