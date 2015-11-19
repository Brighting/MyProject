//
//  BDDCoreTextImageData.h
//  CoreTextDemo
//
//  Created by zhangheliang on 15/8/13.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BDDCoreTextBaseData.h"

void deallocCallback(void* ref);
CGFloat ascentCallback(void *ref);
CGFloat descentCallback(void *ref);
CGFloat widthCallback(void* ref);

typedef enum BDDCoreTextAttachDataAlignMent
{
    BDDCoreTextAttachDataAlignMentTop = 1,
    BDDCoreTextAttachDataAlignMentCenter,
    BDDCoreTextAttachDataAlignMentBottom
}BDDCoreTextAttachDataAlignMent;
typedef enum BDDCoreTextAttachDataFill
{
    BDDCoreTextAttachDataFillStretch,
    BDDCoreTextAttachDataFillAspectFit
}BDDCoreTextAttachDataFill;

@interface BDDCoreTextAttachData : BDDCoreTextBaseData
@property (nonatomic, strong) id                                attachObject;
@property (nonatomic, assign) CGSize                            maxSize;
@property (nonatomic, assign) UIEdgeInsets                      margin;
@property (nonatomic, assign) BDDCoreTextAttachDataAlignMent    alignment;
@property (nonatomic, assign) BDDCoreTextAttachDataFill         fillMode;
- (CGSize)contentSize;
@end
