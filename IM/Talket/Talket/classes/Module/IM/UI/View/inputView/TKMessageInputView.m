//
//  TKMessageInputView.m
//  Talket
//
//  Created by zhangheliang on 15/5/12.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import "TKMessageInputView.h"
#define TKMessageInputViewXibID   101
@interface TKMessageInputView()

@end

@implementation TKMessageInputView
-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil];
        [self addSubview:self.view];
    }
    return self;
}
-(void)awakeFromNib{
    [self setupUI];
}
-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil];
        [self addSubview:self.view];
    }
    return self;
}
#pragma mark - private methods
-(void)setupUI{
    _mMessageInputBGImg.image = [[UIImage imageNamed:@"bg_bdd761m_message_bar"] stretchableImageWithLeftCapWidth:3.0 topCapHeight:3.0];
    _mInputBoxBGImg.image = [[UIImage imageNamed:@"bg_bdd761m_message_input"] stretchableImageWithLeftCapWidth:3.0 topCapHeight:3.0];
    _mSendBtn.layer.cornerRadius = 2.5;
}
- (IBAction)sendImageBtnClick:(id)sender {
}
- (IBAction)sendBtnClick:(id)sender {
}


@end
