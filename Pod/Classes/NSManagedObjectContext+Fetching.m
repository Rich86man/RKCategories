//
//  NSManagedObjectContext+Fetching.m
//
//  Created by Richard Kirk on 3/13/14.
//  Copyright (c) 2014 Exactly what it sounds like. All rights reserved.
//

#import "NSManagedObjectContext+Fetching.h"

@implementation NSManagedObjectContext (Fetching)

- (NSArray *)objectsWithIDs:(NSArray *)objectIDs
{
    NSMutableArray *objects = [NSMutableArray arrayWithCapacity:objectIDs.count];
    for (NSManagedObjectID *objectID in objectIDs) {
        if (![objectID isKindOfClass:[NSManagedObjectID class]]) { continue; }
        NSManagedObject * object = [self objectWithID:objectID];
        if (object) {
            [objects addObject:object];
        }
    }
    return objects;
}

- (void)deleteObjects:(NSArray *)objects
{
    for (NSManagedObject *object in objects) {
        [self deleteObject:object];
    }
}

- (void)deleteObjectsWithIds:(NSArray *)objectIds
{
    [self deleteObjects:[self objectsWithIDs:objectIds]];
}


@end
