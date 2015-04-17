//
//  NSArray+Random.m
//  Anonymish
//
//  Created by Richard Kirk on 12/13/14.
//  Copyright (c) 2014 Exactly what it sounds like. All rights reserved.
//

#import "NSArray+Random.h"

@implementation NSArray (Random)

-(id)randomObject {
    NSUInteger myCount = [self count];
    if (myCount)
        return [self objectAtIndex:arc4random_uniform((u_int32_t)myCount)];
    else
        return nil;
}

@end