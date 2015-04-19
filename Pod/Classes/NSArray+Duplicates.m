//
//  NSArray+Duplicates.m
//  Anonymish
//
//  Created by Richard Kirk on 4/27/14.
//  Copyright (c) 2014 Exactly what it sounds like. All rights reserved.
//

#import "NSArray+Duplicates.h"

@implementation NSArray (Duplicates)

- (NSArray *)removeDuplicates
{
    return [[NSOrderedSet orderedSetWithArray:self] array];
}


- (NSArray *)removeDuplicateServerIds
{
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:self.count];
    
    for (NSDictionary *entityDictionary in self) {
        NSNumber *serverId = entityDictionary[@"id"];
        if ([[result valueForKey:@"id"] containsObject:serverId]) {
            NSLog(@"found Dup");
            continue; }
        [result addObject:entityDictionary];
    }

    return result;
}
@end
