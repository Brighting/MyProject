//
//  TKChatRoomSendCell.m
//  Talket
//
//  Created by zhangheliang on 15/5/15.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import "IMChatRoomSendPlainTextCell.h"
#import "TKMessageTextView.h"

@interface IMChatRoomSendPlainTextCell ()
@property (weak, nonatomic) IBOutlet UIImageView              *bubbleImg;

@property (weak, nonatomic) IBOutlet TKMessageTextView        *plainTextView;
@end
@implementation IMChatRoomSendPlainTextCell
#pragma mark - public methods
-(void)setPlainTextContent:(NSString *)plainTextContent{
    _plainTextView.text = plainTextContent;
}
-(void)setupUI{
    [super setupUI];
    
    _plainTextView.dataDetectorTypes = UIDataDetectorTypeAll;
}
#pragma mark - override methods
- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupUI];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
