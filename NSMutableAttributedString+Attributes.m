//
//  NSMutableAttributedString+Attributes.m
//
//  Created by Richard Kirk on 5/6/14.
//

#import "NSMutableAttributedString+Attributes.h"

@interface NSString(MASAttributes)

-(NSRange)rangeOfStringNoCase:(NSString*)s;

@end

@implementation NSString(MASAttributes)

-(NSRange)rangeOfStringNoCase:(NSString*)s
{
    if (!s) {
        return NSMakeRange(NSNotFound, 0);
    }
    return  [self rangeOfString:s options:NSCaseInsensitiveSearch];
}

@end



@implementation NSMutableAttributedString (Attributes)

- (void)addColor:(UIColor *)color
{
    [self addColor:color substring:self.string];
}


- (void)addColor:(UIColor *)color substring:(NSString *)substring
{
    if (!substring || !color) { return; }
    NSRange range = [self.string rangeOfStringNoCase:substring];
    if (range.location != NSNotFound && color != nil) {
        [self addAttribute:NSForegroundColorAttributeName
                     value:color
                     range:range];
    }
}


- (void)addBackgroundColor:(UIColor *)color
{
    [self addBackgroundColor:color substring:self.string];
}


- (void)addBackgroundColor:(UIColor *)color substring:(NSString *)substring
{
    if (!substring || !color) { return; }
    NSRange range = [self.string rangeOfStringNoCase:substring];
    if (range.location != NSNotFound && color != nil) {
        [self addAttribute:NSBackgroundColorAttributeName
                     value:color
                     range:range];
    }
}


- (void)addUnderline
{
    [self addUnderlineForSubstring:self.string];
}



- (void)addUnderlineForSubstring:(NSString *)substring
{
    if (!substring) { return; }
    NSRange range = [self.string rangeOfStringNoCase:substring];
    if (range.location != NSNotFound) {
        [self addAttribute: NSUnderlineStyleAttributeName
                     value:@(NSUnderlineStyleSingle)
                     range:range];
    }
}


- (void)addStrikeThrough:(int)thickness
{
    [self addStrikeThrough:thickness substring:self.string];
}


- (void)addStrikeThrough:(int)thickness substring:(NSString *)substring
{
    NSRange range = [self.string rangeOfStringNoCase:substring];
    if (range.location != NSNotFound) {
        [self addAttribute: NSStrikethroughStyleAttributeName
                     value:@(thickness)
                     range:range];
    }
}


- (void)addShadowColor:(UIColor *)color width:(int)width height:(int)height radius:(int)radius
{
    [self addShadowColor:color width:width height:height radius:radius];
}


- (void)addShadowColor:(UIColor *)color width:(int)width height:(int)height radius:(int)radius substring:(NSString *)substring
{
    if (!substring || !color) { return; }
    NSRange range = [self.string rangeOfStringNoCase:substring];
    if (range.location != NSNotFound && color != nil) {
        NSShadow *shadow = [[NSShadow alloc] init];
        [shadow setShadowColor:color];
        [shadow setShadowOffset:CGSizeMake (width, height)];
        [shadow setShadowBlurRadius:radius];
        
        [self addAttribute: NSShadowAttributeName
                     value:shadow
                     range:range];
    }
}


- (void)addFontWithName:(NSString *)fontName size:(int)fontSize
{
    [self addFontWithName:fontName size:fontSize substring:self.string];
}


- (void)addFontWithName:(NSString *)fontName size:(int)fontSize substring:(NSString *)substring
{
    if (!substring || !fontName) { return; }
    NSRange range = [self.string rangeOfStringNoCase:substring];
    if (range.location != NSNotFound && fontName != nil) {
        UIFont * font = [UIFont fontWithName:fontName size:fontSize];
        [self addAttribute: NSFontAttributeName
                     value:font
                     range:range];
    }
}


- (void)addFont:(UIFont *)font
{
    [self addFont:font substring:self.string];
}


- (void)addFont:(UIFont *)font substring:(NSString *)substring
{
    if (!substring || !font) { return; }
    NSRange range = [self.string rangeOfStringNoCase:substring];
    if (range.location != NSNotFound && font != nil) {
        [self addAttribute: NSFontAttributeName
                     value:font
                     range:range];
    }
}


- (void)addAlignment:(NSTextAlignment)alignment
{
    [self addAlignment:alignment substring:self.string];
}


- (void)addAlignment:(NSTextAlignment)alignment substring:(NSString *)substring
{
    if (!substring) { return; }
    NSRange range = [self.string rangeOfStringNoCase:substring];
    if (range.location != NSNotFound) {
        NSMutableParagraphStyle* style=[[NSMutableParagraphStyle alloc]init];
        style.alignment = alignment;
        [self addAttribute: NSParagraphStyleAttributeName
                     value:style
                     range:range];
    }
}


- (void)addStrokeColor:(UIColor *)color thickness:(int)thickness
{
    [self addStrokeColor:color thickness:thickness substring:self.string];
}


- (void)addStrokeColor:(UIColor *)color thickness:(int)thickness substring:(NSString *)substring
{
    if (!substring || !color) { return; }
    NSRange range = [self.string rangeOfStringNoCase:substring];
    if (range.location != NSNotFound && color != nil) {
        [self addAttribute:NSStrokeColorAttributeName
                     value:color
                     range:range];
        [self addAttribute:NSStrokeWidthAttributeName
                     value:@(thickness)
                     range:range];
    }
}


- (void)addVerticalGlyph:(BOOL)glyph
{
    [self addVerticalGlyph:glyph substring:self.string];
}


- (void)addVerticalGlyph:(BOOL)glyph substring:(NSString *)substring
{
    NSRange range = [self.string rangeOfStringNoCase:substring];
    if (range.location != NSNotFound) {
        [self addAttribute:NSForegroundColorAttributeName
                     value:@(glyph)
                     range:range];
    }
}


- (void)addKerning:(int)kern
{
    [self addKerning:kern substring:self.string];
}


- (void)addKerning:(int)kern substring:(NSString *)substring
{
    NSRange range = [self.string rangeOfStringNoCase:substring];
    if (range.location != NSNotFound) {
        [self addAttribute:NSKernAttributeName
                     value:@(kern)
                     range:range];
    }
}

- (void)addLineSpacing:(CGFloat)spacing
{
    [self addLineSpacing:spacing substring:self.string];
}


- (void)addLineSpacing:(CGFloat)spacing substring:(NSString *)substring
{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = spacing;

    NSRange range = [self.string rangeOfStringNoCase:substring];
    if (range.location != NSNotFound) {
        [self addAttribute:NSParagraphStyleAttributeName
                     value:paragraphStyle
                     range:range];
    }
}


- (void)addAttributes:(NSDictionary *)attrs
{
    NSRange range = NSMakeRange(0, self.string.length);
    if (range.location != NSNotFound) {
        [self addAttributes:attrs range:range];
    }
}


@end


@implementation NSString (Attributes)

- (NSMutableAttributedString *)mutableAttributedString
{
    return [[NSMutableAttributedString alloc] initWithString:self];
}


- (NSAttributedString *)attributedString
{
    return [[NSAttributedString alloc] initWithString:self];
}

@end
