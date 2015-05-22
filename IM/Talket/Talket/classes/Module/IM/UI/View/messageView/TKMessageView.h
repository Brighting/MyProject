//
//  TKMessageView.h
//  Talket
//
//  Created by zhangheliang on 15/5/22.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TKMessageType.h"
#import "TKMessageTextView.h"
#import "TKMessageImageView.h"

@interface TKMessageView : UIView
@property (nonatomic, assign) TKMessageType         mMessageType;
-(void)setMessageText:(NSString *)messageText;
@end
