//
//  NSArray+Safe.m
//  Anonymish
//
//  Created by Richard Kirk on 5/14/14.
//  Copyright (c) 2014 Exactly what it sounds like. All rights reserved.
//

#import "NSArray+Safe.h"

@implementation NSArray (RKSafe)

- (NSArray *)safeSubArrayWithRange:(NSRange)range
{
    if (range.location + range.length > self.count) {
        range.length = range.length - ((range.location + range.length) - self.count);
    }
    
    return [self subarrayWithRange:range];
}

- (id)rk_safeObjectAtIndex:(NSUInteger)index
{
    if (index >= self.count) {
        return nil;
    }
    return [self objectAtIndex:index];
}

@end
