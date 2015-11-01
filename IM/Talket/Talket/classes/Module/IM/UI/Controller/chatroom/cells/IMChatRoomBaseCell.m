//
//  TKChatRoomBaseCell.m
//  Talket
//
//  Created by zhangheliang on 15/5/22.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import "IMChatRoomBaseCell.h"

@interface IMChatRoomBaseCell ()
//message title
@property (weak, nonatomic) IBOutlet UIView             *cellTitleView;
@property (weak, nonatomic) IBOutlet UILabel            *cellTitleLab;
@property (weak, nonatomic) IBOutlet UIImageView        *cellTitleBackImg;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *cellTitleHeiht;

//message time
@property (weak, nonatomic) IBOutlet UILabel            *timeLab;

@property (nonatomic, assign) CGFloat                   cellTitleOriginHeight;
@end
@implementation IMChatRoomBaseCell
#pragma mark - public methods
-(void)setCellTitle:(NSString *)title{
    if (title.length > 0) {
        _cellTitleLab.text = title;
        _cellTitleHeiht.constant = _cellTitleOriginHeight;
    }else{
        _cellTitleHeiht.constant = 0;
    }
}
-(void)setTime:(NSString *)timeStr{
    _timeLab.text = timeStr;
}
-(void)setupUI{
    return;
}
#pragma mark -override methods
- (void)awakeFromNib {
    // Initialization code
    _cellTitleOriginHeight = _cellTitleHeiht.constant;
}
#pragma mark - private methods


@end
