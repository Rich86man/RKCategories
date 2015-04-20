//
//  NSMutableArray+Safe.m
//  tagged
//
//  Created by Richard Kirk on 4/17/15.
//  Copyright (c) 2015 FLY LIKE A BEAGLE. All rights reserved.
//

#import "NSMutableArray+Safe.h"

@implementation NSMutableArray (Safe)

- (void)safeAddObject:(id)object
{
    if (object) {
        [self addObject:object];
    }
}

@end
