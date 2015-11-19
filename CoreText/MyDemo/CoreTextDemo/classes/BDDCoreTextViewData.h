//
//  BDDCoreTextData.h
//  CoreTextDemo
//
//  Created by zhangheliang on 15/8/13.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreText/CoreText.h>

@interface BDDCoreTextViewData : NSObject
@property (nonatomic, assign) CTFrameRef            coreTextFrame;
@property (nonatomic, assign) UIEdgeInsets          margin;
@property (nonatomic, assign) CGFloat               height;
@property (nonatomic, assign) CGFloat               width;
@property (nonatomic, strong) NSMutableArray        *contentArray;
@end
