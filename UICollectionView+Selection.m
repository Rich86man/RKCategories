//
//  UICollectionView+Selection.m
//  tagged
//
//  Created by Richard Kirk on 4/18/15.
//  Copyright (c) 2015 FLY LIKE A BEAGLE. All rights reserved.
//

#import "UICollectionView+Selection.h"

@implementation UICollectionView (Selection)

- (void)deselectAll:(BOOL)animated
{
    for (NSIndexPath *indexPath in [self indexPathsForSelectedItems]) {
        [self deselectItemAtIndexPath:indexPath animated:animated];
    }
}

@end
