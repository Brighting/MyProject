//
//  Header.h
//  Talket
//
//  Created by heliangzhang on 15/5/23.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

typedef NS_ENUM(NSUInteger, TKMessageSendState) {
    /** message is sending */
    TKMessageSendStateSending = 1,
    /** message send succeed */
    TKMessageSendStateSendSucceed,
    /** message send failed */
    TKMessageSendStateSendFailed
};