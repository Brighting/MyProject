//
//  BDDCoreTextImageData.m
//  CoreTextDemo
//
//  Created by zhangheliang on 15/8/13.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import "BDDCoreTextAttachData.h"
#import "BDDCoreTextConfig.h"
void deallocCallback(void* ref)
{
    
}

CGFloat ascentCallback(void *ref)
{
    BDDCoreTextAttachData *attachMent = (__bridge BDDCoreTextAttachData *)ref;
    CGFloat ascent = 0; 
    CGFloat height = [attachMent contentSize].height;
    BDDCoreTextConfig *defaultConfig = [BDDCoreTextConfig defaultCoreTextConfig];
    CGFloat fontAscent ;
    CGFloat fontDescent;
    if (attachMent.config) {
        fontAscent = attachMent.config.font.ascender;
        fontDescent = attachMent.config.font.descender;
    }else{
        fontAscent = defaultConfig.font.ascender;
        fontDescent = defaultConfig.font.descender;
    }
    
    switch (attachMent.alignment)
    {
        case BDDCoreTextAttachDataAlignMentTop:
            ascent = fontAscent;
            break;
        case BDDCoreTextAttachDataAlignMentCenter:
        {
            CGFloat baseLine = (fontAscent + fontDescent) / 2 - fontDescent;
            ascent = height / 2 + baseLine;
        }
            break;
        case BDDCoreTextAttachDataAlignMentBottom:
            ascent = height - fontDescent;
            break;
        default:
            break;
    }
    return ascent;
}

CGFloat descentCallback(void *ref)
{
    BDDCoreTextAttachData *attachMent = (__bridge BDDCoreTextAttachData *)ref;
    CGFloat descent = 0;
    CGFloat height = [attachMent contentSize].height;
    BDDCoreTextConfig *defaultConfig = [BDDCoreTextConfig defaultCoreTextConfig];
    CGFloat fontAscent ;
    CGFloat fontDescent;
    if (attachMent.config) {
        fontAscent = attachMent.config.font.ascender;
        fontDescent = attachMent.config.font.descender;
    }else{
        fontAscent = defaultConfig.font.ascender;
        fontDescent = defaultConfig.font.descender;
    }
    switch (attachMent.alignment)
    {
        case BDDCoreTextAttachDataAlignMentTop:
        {
            descent = height - fontAscent;
            break;
        }
        case BDDCoreTextAttachDataAlignMentCenter:
        {
            CGFloat baseLine = (fontAscent + fontDescent) / 2 - fontDescent;
            descent = height / 2 - baseLine;
        }
            break;
        case BDDCoreTextAttachDataAlignMentBottom:
        {
            descent = fontDescent;
            break;
        }
        default:
            break;
    }
    return descent;
}

CGFloat widthCallback(void* ref)
{
    BDDCoreTextAttachData *attachMent = (__bridge BDDCoreTextAttachData *)ref;
    return [attachMent contentSize].width;
}

@implementation BDDCoreTextAttachData
-(id)init{
    self = [super init];
    if (self) {
        self.alignment = BDDCoreTextAttachDataAlignMentCenter;
        self.fillMode = BDDCoreTextAttachDataFillStretch;
    }
    return self;
}
-(NSAttributedString *)attributeString{
    CTRunDelegateCallbacks callbacks;
    memset(&callbacks, 0, sizeof(CTRunDelegateCallbacks));
    callbacks.version = kCTRunDelegateVersion1;
    callbacks.getAscent = ascentCallback;
    callbacks.getDescent = descentCallback;
    callbacks.getWidth = widthCallback;
    CTRunDelegateRef delegate = CTRunDelegateCreate(&callbacks, (__bridge void *)(self));
    
    unichar objectReplacementChar = 0xFFFC;
    NSString * content = [NSString stringWithCharacters:&objectReplacementChar length:1];
    NSMutableAttributedString *attachText   = [[NSMutableAttributedString alloc]initWithString:content];
    
    NSDictionary *attribute = [NSDictionary dictionaryWithObjectsAndKeys:(__bridge id)delegate,kCTRunDelegateAttributeName, nil];
    [attachText setAttributes:attribute range:NSMakeRange(0, 1)];
    CFRelease(delegate);
    return attachText;
}
#pragma mark - private methods
- (CGSize)contentSize
{
    CGSize contentSize = [self attachmentSize];
    if (_maxSize.width > 0 &&_maxSize.height > 0 &&
        contentSize.width > 0 && contentSize.height > 0)
    {
        contentSize = [self calculateContentSize];
    }
    return CGSizeMake(contentSize.width,contentSize.height);
}


- (CGSize)calculateContentSize
{
    CGSize  size;
    CGSize attachmentSize   = [self attachmentSize];
    CGFloat attachmentWidth = attachmentSize.width;
    CGFloat attachmentHeight = attachmentSize.height;
    CGFloat maxWidth = _maxSize.width;
    CGFloat maxHeight = _maxSize.height;
    switch (self.fillMode) {
        case BDDCoreTextAttachDataFillStretch:
        {
            if (attachmentWidth <= maxWidth &&
                attachmentHeight <= maxHeight) {
                size = attachmentSize;
            }else if (attachmentWidth <= maxWidth){
                size = CGSizeMake(attachmentWidth,maxHeight);
            }else if (attachmentHeight <= maxHeight){
                size = CGSizeMake(maxWidth,attachmentHeight);
            }else{
                size = _maxSize;
            }
            break;
        }
        case BDDCoreTextAttachDataFillAspectFit:
        {
            if (attachmentWidth <= maxWidth &&
                attachmentHeight <= maxHeight){
                size = attachmentSize;
            }else if (attachmentWidth <= maxWidth){
                CGFloat ratio = maxHeight / attachmentHeight;
                size = CGSizeMake(attachmentWidth * ratio,maxHeight);
            }else if (attachmentHeight <= maxHeight){
                CGFloat ratio = maxWidth / attachmentWidth;
                size = CGSizeMake(attachmentWidth,attachmentHeight * ratio);
            }else{
                CGFloat ratio = MIN(maxHeight / attachmentHeight, maxWidth / attachmentWidth);
                size = CGSizeMake(attachmentWidth * ratio,attachmentHeight * ratio);;
            }
            break;
        }
        default:
            break;
    }
    return size;
}

- (CGSize)attachmentSize
{
    CGSize size = CGSizeZero;
    if ([_attachObject isKindOfClass:[UIImage class]])
    {
        size = [((UIImage *)_attachObject) size];
    }
    else if ([_attachObject isKindOfClass:[UIView class]])
    {
        size = [((UIView *)_attachObject) bounds].size;
    }
    size.width = size.width + _margin.left + _margin.right;
    size.height = size.height + _margin.top + _margin.bottom;
    return size;
}

@end
