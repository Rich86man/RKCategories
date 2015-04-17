//
//  NSMutableAttributedString+Attributes.h
//
//  Created by Richard Kirk on 5/6/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableAttributedString (Attributes)

- (void)addColor:(UIColor *)color;
- (void)addColor:(UIColor *)color substring:(NSString *)substring;

- (void)addBackgroundColor:(UIColor *)color;
- (void)addBackgroundColor:(UIColor *)color substring:(NSString *)substring;

- (void)addUnderline;
- (void)addUnderlineForSubstring:(NSString *)substring;

- (void)addStrikeThrough:(int)thickness;
- (void)addStrikeThrough:(int)thickness substring:(NSString *)substring;

- (void)addShadowColor:(UIColor *)color width:(int)width height:(int)height radius:(int)radius;
- (void)addShadowColor:(UIColor *)color width:(int)width height:(int)height radius:(int)radius substring:(NSString *)substring;

- (void)addFontWithName:(NSString *)fontName size:(int)fontSize;
- (void)addFontWithName:(NSString *)fontName size:(int)fontSize substring:(NSString *)substring;

- (void)addFont:(UIFont *)font;
- (void)addFont:(UIFont *)font substring:(NSString *)substring;

- (void)addAlignment:(NSTextAlignment)alignment;
- (void)addAlignment:(NSTextAlignment)alignment substring:(NSString *)substring;

- (void)addStrokeColor:(UIColor *)color thickness:(int)thickness;
- (void)addStrokeColor:(UIColor *)color thickness:(int)thickness substring:(NSString *)substring;

- (void)addVerticalGlyph:(BOOL)glyph;
- (void)addVerticalGlyph:(BOOL)glyph substring:(NSString *)substring;

- (void)addKerning:(int)kern;
- (void)addKerning:(int)kern substring:(NSString *)substring;

- (void)addLineSpacing:(CGFloat)spacing;
- (void)addLineSpacing:(CGFloat)spacing substring:(NSString *)substring;

- (void)addAttributes:(NSDictionary *)attrs;

@end

@interface NSString (Attributes)
- (NSMutableAttributedString *)mutableAttributedString;
- (NSAttributedString *)attributedString;
@end