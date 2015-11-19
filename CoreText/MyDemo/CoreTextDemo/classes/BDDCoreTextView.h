//
//  BDDCoreTextView.h
//  CoreTextDemo
//
//  Created by zhangheliang on 15/8/13.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreText/CoreText.h>
#import "BDDCoreTextViewData.h"

@interface BDDCoreTextView : UIView
@property (nonatomic, assign) BOOL                  selectable;
@property (nonatomic, assign) BOOL                  showMagnifier;
@property (nonatomic, assign) BOOL                  underLineForLink;
@property (nonatomic, assign) BOOL                  autoDetectLinks;

@property (strong, nonatomic) BDDCoreTextViewData * data;
@end
