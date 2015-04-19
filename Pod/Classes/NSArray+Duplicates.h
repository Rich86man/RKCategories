//
//  NSArray+Duplicates.h
//  Anonymish
//
//  Created by Richard Kirk on 4/27/14.
//  Copyright (c) 2014 Exactly what it sounds like. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Duplicates)

- (NSArray *)removeDuplicates;
- (NSArray *)removeDuplicateServerIds;
@end
