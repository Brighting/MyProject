//
//  BDDCoreTextConfig.h
//  CoreTextDemo
//
//  Created by zhangheliang on 15/8/13.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BDDCoreTextConfig : NSObject

@property (nonatomic, strong) UIFont            *font;
@property (nonatomic, strong) UIColor           *textColor;
@property (nonatomic, strong) UIColor           *linkColor;
@property (nonatomic,strong)  UIColor           *highlightColor;
@property (nonatomic,assign)  BOOL              underLineForLink;
@property (nonatomic,assign)  BOOL              autoDetectLinks;
@property (nonatomic,assign)  CTTextAlignment   textAlignment;
@property (nonatomic,assign)  CTLineBreakMode   lineBreakMode;
@property (nonatomic,assign)  CGFloat           paragraphSpace;
@property (nonatomic, assign) CGFloat           lineSpace;

+(BDDCoreTextConfig *)defaultCoreTextConfig;
@end
