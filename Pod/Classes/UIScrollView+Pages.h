//
//  UIScrollView+Pages.h
//
//  Created by Richard Kirk on 6/17/14.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (Pages)

- (NSUInteger)verticalPageCount;
- (NSUInteger)horizontalPageCount;

- (NSUInteger)currentVerticalPage;
- (NSUInteger)currentHorizontalPage;

- (void)addVerticalPage;
- (void)addHorizontalPage;

- (void)scrollToHorizontalPage:(NSUInteger)page animated:(BOOL)animated;
- (BOOL)isOnLastHorizontalPage;
- (CGFloat)distancePastBottom;


@end
