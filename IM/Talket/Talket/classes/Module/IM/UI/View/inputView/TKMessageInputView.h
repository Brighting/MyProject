//
//  TKMessageInputView.h
//  Talket
//
//  Created by zhangheliang on 15/5/12.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TKMessageInputView : UIView
@property (strong, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UIImageView *mMessageInputBGImg;
@property (weak, nonatomic) IBOutlet UIImageView *mInputBoxBGImg;
@property (weak, nonatomic) IBOutlet UIButton *mSendImagBtn;
@property (weak, nonatomic) IBOutlet UIButton *mSendBtn;
@property (weak, nonatomic) IBOutlet UITextView *mTextView;

@end
