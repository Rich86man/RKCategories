//
//  NSManagedObjectContext+Fetching.h
//
//  Created by Richard Kirk on 3/13/14.
//  Copyright (c) 2014 Exactly what it sounds like. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface NSManagedObjectContext (Fetching)

- (NSArray *)objectsWithIDs:(NSArray *)objectIDs;
- (void)deleteObjects:(NSArray *)objects;
- (void)deleteObjectsWithIds:(NSArray *)objectIds;
@end
