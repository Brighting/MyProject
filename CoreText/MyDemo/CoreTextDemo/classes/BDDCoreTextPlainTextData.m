//
//  BDDCoreTextPlainTextData.m
//  CoreTextDemo
//
//  Created by zhangheliang on 15/8/13.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import "BDDCoreTextPlainTextData.h"

@implementation BDDCoreTextPlainTextData
-(NSAttributedString *)attributeString{
    if (self.text.length == 0 ) {
        return nil;
    }
    BDDCoreTextConfig *defaultConfig = [BDDCoreTextConfig defaultCoreTextConfig];
    //font
    CTFontRef fontRef;
    if (self.config.font) {
        fontRef =CTFontCreateWithName((CFStringRef)self.config.font.fontName,self.config.font.pointSize,NULL);
    }else{
        fontRef =CTFontCreateWithName((CFStringRef)defaultConfig.font.fontName,defaultConfig.font.pointSize,NULL);
    }
    
    //paragraph style
    //line space
    CGFloat lineSpacing = self.config.lineSpace;
    //TextAlignment
    CTTextAlignment textAlignment = self.config.textAlignment;
    //LineBreakMode
    CTLineBreakMode lineBreakMode = self.config.lineBreakMode;
    //paragraphSpace
    CGFloat paragraphSpace = self.config.paragraphSpace;
    //min line height
    CGFloat minLineHeight = self.config.font.lineHeight;
    CTParagraphStyleSetting settings[] = {
        {kCTParagraphStyleSpecifierAlignment,sizeof(textAlignment),&textAlignment},
        {kCTParagraphStyleSpecifierLineBreakMode,sizeof(lineBreakMode),&lineBreakMode},
        { kCTParagraphStyleSpecifierMaximumLineSpacing, sizeof(CGFloat), &lineSpacing },
        { kCTParagraphStyleSpecifierMinimumLineSpacing, sizeof(CGFloat), &lineSpacing },
        {kCTParagraphStyleSpecifierParagraphSpacing,sizeof(paragraphSpace),&paragraphSpace},
        {kCTParagraphStyleSpecifierMinimumLineHeight,sizeof(minLineHeight),&minLineHeight}
    };
    CTParagraphStyleRef theParagraphRef = CTParagraphStyleCreate(settings, sizeof(settings) / sizeof(settings[0]));
    //text color
    UIColor * textColor;
    if (self.config.textColor) {
        textColor = self.config.textColor;
    }else{
        textColor = defaultConfig.textColor;
    }
    NSMutableDictionary * attributes = [NSMutableDictionary dictionary];
    attributes[(id)kCTForegroundColorAttributeName] = (id)textColor.CGColor;
    attributes[(id)kCTFontAttributeName] = (__bridge id)fontRef;
    attributes[(id)kCTParagraphStyleAttributeName] = (__bridge id)theParagraphRef;
    CFRelease(theParagraphRef);
    CFRelease(fontRef);
    return [[NSAttributedString alloc] initWithString:self.text attributes:attributes];
}
@end
