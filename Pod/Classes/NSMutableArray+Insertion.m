//
//  NSMutableArray+Insertion.m
//  Anonymish
//
//  Created by Richard Kirk on 5/13/14.
//  Copyright (c) 2014 Exactly what it sounds like. All rights reserved.
//

#import "NSMutableArray+Insertion.h"

@implementation NSMutableArray (Insertion)

- (void)insertArrayAtBegining:(NSArray *)array
{
    for (id object in array.reverseObjectEnumerator) {
        [self insertObject:object atIndex:0];
    }
}

@end

