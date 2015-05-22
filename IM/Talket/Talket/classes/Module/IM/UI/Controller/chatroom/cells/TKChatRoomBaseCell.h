//
//  TKChatRoomBaseCell.h
//  Talket
//
//  Created by zhangheliang on 15/5/22.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TKMessageView.h"
#import "TKMessageType.h"

@interface TKChatRoomBaseCell : UITableViewCell
//message type
@property (nonatomic, assign) TKMessageType             mMessageType;
-(CGFloat)getCellHeight;


-(void)setMessageText:(NSString *)messageText;
@end
