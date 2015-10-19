//
//  NSArray+Safe.h
//  Anonymish
//
//  Created by Richard Kirk on 5/14/14.
//  Copyright (c) 2014 Exactly what it sounds like. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (RKSafe)

- (NSArray *)safeSubArrayWithRange:(NSRange)range;
- (id)rk_safeObjectAtIndex:(NSUInteger)index;
@end
