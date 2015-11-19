//
//  BDDCoreTextBaseData.h
//  CoreTextDemo
//
//  Created by zhangheliang on 15/8/14.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreText/CoreText.h>
#import "BDDCoreTextConfig.h"

@interface BDDCoreTextBaseData : NSObject
@property (nonatomic, strong) NSString                  *text;
@property (nonatomic, strong) NSAttributedString        *attributeString;
@property (nonatomic, strong) BDDCoreTextConfig         *config;
@end
