//
//  TKMessageView.m
//  Talket
//
//  Created by zhangheliang on 15/5/22.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import "TKMessageView.h"
@interface TKMessageView()
@property (nonatomic, weak) TKMessageTextView     *mTextMessageView;
@property (nonatomic, weak) TKMessageImageView    *mImageMessageView;
@end
@implementation TKMessageView
-(void)setMMessageType:(TKMessageType)mMessageType{
    _mMessageType = mMessageType;
    switch (mMessageType) {
        case TKMessageTypePlainText:
        {
            [self createTextMessageView];
            [self setupTextMessageView];
            break;
        }
        case TKMessageTypeImage:
        {
            break;
        }
        default:
            break;
    }
}
-(void)setMessageText:(NSString *)messageText{
    _mTextMessageView.text = messageText;
}
#pragma mark - private methods
-(void)createTextMessageView{
    TKMessageTextView *textView = [[TKMessageTextView alloc] initWithFrame:CGRectZero];
    self.mTextMessageView = textView;
    [self addSubview:_mTextMessageView];
}
-(void)setupTextMessageView{
    _mTextMessageView.translatesAutoresizingMaskIntoConstraints = NO;
    _mTextMessageView.editable = NO;
    _mTextMessageView.scrollEnabled = NO;
    NSDictionary *viewsDic = NSDictionaryOfVariableBindings(_mTextMessageView);
    // textView constraints
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_mTextMessageView]|"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDic]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_mTextMessageView]|"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDic]];
}
@end
