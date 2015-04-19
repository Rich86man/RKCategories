//
//  NSDate+BM.h
//  Bay Area Music Guilde
//
//  Created by Captain on 2/1/14.
//  Copyright (c) 2014 Exactly what it sounds like. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (RK)
- (NSDate *)dateBySubtractingDays:(NSUInteger)daysPast;
- (NSDate *)oneDayForward;
- (NSDate *)oneWeekForward;
- (NSDate *)oneWeekPast;
- (NSDate *)dateWithOutTime;
- (NSInteger)daysAwayFromToday;
+ (NSDate *)oneWeekFromToday;
+ (NSDate *)oneWeekAgoFromToday;
+ (NSDate *)twoWeeksAgoFromToday;
+ (NSDate *)oneDayAgoFromToday;
+ (NSDate *)twoDaysAgoFromToday;
@end
