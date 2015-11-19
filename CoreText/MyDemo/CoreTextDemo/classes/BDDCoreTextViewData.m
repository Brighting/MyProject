//
//  BDDCoreTextData.m
//  CoreTextDemo
//
//  Created by zhangheliang on 15/8/13.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import "BDDCoreTextViewData.h"
#import "BDDCoreTextBaseData.h"

@implementation BDDCoreTextViewData
-(CTFrameRef)coreTextFrame{
    NSMutableAttributedString *allString = [[NSMutableAttributedString alloc] init];
    for (BDDCoreTextBaseData *data in self.contentArray) {
        [allString appendAttributedString:data.attributeString];
    }
    CTFramesetterRef framesetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)allString);
    CGSize restrictSize = CGSizeMake(self.width, CGFLOAT_MAX);
    CGSize coreTextSize = CTFramesetterSuggestFrameSizeWithConstraints(framesetter, CFRangeMake(0,0), nil, restrictSize, nil);
    CGFloat textHeight = coreTextSize.height;
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, CGRectMake(0, 0, self.width, textHeight));
    CTFrameRef frame = CTFramesetterCreateFrame(framesetter, CFRangeMake(0, 0), path, NULL);
    CFRelease(path);
    CFRelease(framesetter);
    CFAutorelease(frame);
    return frame;
}
@end
