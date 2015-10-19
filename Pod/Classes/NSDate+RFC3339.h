//
//  NSDate+RFC3339.h
//  Pods
//
//  Created by Richard Kirk on 8/30/15.
//
//

#import <Foundation/Foundation.h>

@interface NSDate (RFC3339)
- (NSString *)RFC3339String;
+ (NSDate*)fromRFC3339String:(NSString*)dateString;
@end
