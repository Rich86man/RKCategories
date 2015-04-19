//
//  UILabel+Extras.h
//
//  Copyright (c) 2013 Exactly what it sounds like. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Extras)

- (void) setVerticalAlignmentTop;
- (void) setVerticalAlignmentBottomWithFrame:(CGRect)originalFrame;
- (void) sizeToFitVertical;
- (void) sizeToFitHorizontal;
@end
