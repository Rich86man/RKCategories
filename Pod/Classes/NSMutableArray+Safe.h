//
//  NSMutableArray+Safe.h
//  tagged
//
//  Created by Richard Kirk on 4/17/15.
//  Copyright (c) 2015 FLY LIKE A BEAGLE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Safe)

- (void)safeAddObject:(id)object;

@end
