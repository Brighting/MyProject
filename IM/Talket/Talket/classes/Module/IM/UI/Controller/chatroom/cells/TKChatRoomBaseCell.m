//
//  TKChatRoomBaseCell.m
//  Talket
//
//  Created by zhangheliang on 15/5/22.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import "TKChatRoomBaseCell.h"
@interface TKChatRoomBaseCell()
//Cell title
@property (weak, nonatomic) IBOutlet UIView             *mCellTitleView;
@property (weak, nonatomic) IBOutlet UILabel            *mCellTitleLab;
@property (weak, nonatomic) IBOutlet UIImageView        *mCellTitleBackImg;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *mChatRoomTitleHeiht;

//message content
@property (weak, nonatomic) IBOutlet UITextView         *mMessageContentView;
//message status
@property (weak, nonatomic) IBOutlet UILabel            *mReadCountLab;
@property (weak, nonatomic) IBOutlet UILabel            *mTimeLab;
@property (weak, nonatomic) IBOutlet UIImageView        *mMessageStatusImg;


@end
@implementation TKChatRoomBaseCell
-(void)setMMessageType:(TKMessageType)mMessageType{
//    _mMessageType = mMessageType;
//    _mMessgeView.mMessageType = _mMessageType;
//    switch (mMessageType) {
//        case TKMessageTypePlainText:
//        {
//            
//            break;
//        }
//        case TKMessageTypeImage:
//        {
//            break;
//        }
//        default:
//            break;
//    }
}
-(void)setMessageText:(NSString *)messageText{
    _mMessageContentView.text = messageText;
}
- (void)awakeFromNib {
    _mMessageContentView.editable = NO;
    _mMessageContentView.scrollEnabled = NO;
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
