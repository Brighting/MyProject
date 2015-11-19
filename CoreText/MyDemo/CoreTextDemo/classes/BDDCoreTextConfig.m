//
//  BDDCoreTextConfig.m
//  CoreTextDemo
//
//  Created by zhangheliang on 15/8/13.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import "BDDCoreTextConfig.h"
#define RGB(A, B, C)    [UIColor colorWithRed:A/255.0 green:B/255.0 blue:C/255.0 alpha:1.0]
@implementation BDDCoreTextConfig
+(BDDCoreTextConfig *)defaultCoreTextConfig{
    BDDCoreTextConfig *defaultConfig = [[BDDCoreTextConfig alloc] init];
    defaultConfig.font = [UIFont systemFontOfSize:16];
    defaultConfig.lineSpace = defaultConfig.font.lineHeight - defaultConfig.font.ascender + defaultConfig.font.descender;
    defaultConfig.textColor = [UIColor blackColor];
    defaultConfig.linkColor = [UIColor blueColor];
    return defaultConfig;
}
-(id)init{
    self = [super init];
    if (self) {
        self.font = [UIFont systemFontOfSize:16];
        self.lineSpace = self.font.lineHeight - self.font.ascender + self.font.descender;
        self.textColor = [UIColor blackColor];
        self.linkColor = [UIColor blueColor];
        self.textAlignment = kCTTextAlignmentNatural;
        self.lineBreakMode = kCTLineBreakByCharWrapping;
    }
    return self;
}
@end
