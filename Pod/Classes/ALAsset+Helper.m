//
//  ALAsset+Helper.m
//  tagged
//
//  Created by Richard Kirk on 4/17/15.
//  Copyright (c) 2015 FLY LIKE A BEAGLE. All rights reserved.
//

#import "ALAsset+Helper.h"
#import "NSDictionary+QueryString.h"
#import <DZNCategories/Foundation/NSDictionary+Safe.h>

@implementation ALAsset (Helper)

- (NSString *)fileName
{
    NSURL *assetUrl = [self valueForProperty:ALAssetPropertyAssetURL];
    NSString *query = [assetUrl query];
    
    if (!query) { return nil; }
    NSDictionary *dict = [NSDictionary dictionaryWithQueryString:query];
    return [dict safeObjectForKey:@"id"];
}

@end
