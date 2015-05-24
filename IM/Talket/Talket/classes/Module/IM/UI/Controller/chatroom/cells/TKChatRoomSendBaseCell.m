//
//  TKChatRoomSendBaseCell.m
//  Talket
//
//  Created by heliangzhang on 15/5/23.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import "TKChatRoomSendBaseCell.h"

@interface TKChatRoomSendBaseCell ()
//message status
@property (weak, nonatomic) IBOutlet UILabel            *readCountLab;
@property (weak, nonatomic) IBOutlet UIImageView        *sendStatusImg;

//send state
@property (nonatomic, assign) TKMessageSendState        sendState;

@end
@implementation TKChatRoomSendBaseCell
#pragma mark - public methods
-(void)setReadCount:(int)readCount{
    if (readCount > 0) {
        _readCountLab.text = [NSString stringWithFormat:@"%d read",readCount];
    }else{
        _readCountLab.text = nil;
    }
    
}
-(void)setSendState:(TKMessageSendState)sendState{
    _sendState = sendState;
    switch (_sendState) {
        case TKMessageSendStateSending:
        {
            break;
        }
        case TKMessageSendStateSendSucceed:
        {
            break;
        }
        case TKMessageSendStateSendFailed:
        {
            break;
        }
        default:
            break;
    }
}
-(void)setupUI{
    [super setupUI];
}
#pragma mark - override methods
- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
