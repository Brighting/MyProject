//
//  TKChatRoomSendBaseCell.h
//  Talket
//
//  Created by heliangzhang on 15/5/23.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IMChatRoomBaseCell.h"
#import "TKMessageSendState.h"
@interface IMChatRoomSendBaseCell : IMChatRoomBaseCell


-(void)setReadCount:(int)readCount;

-(void)setSendState:(TKMessageSendState)sendState;

@end
