//
//  TKChatRoomBaseCell.h
//  Talket
//
//  Created by zhangheliang on 15/5/22.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IMChatRoomBaseCell : UITableViewCell
-(void)setupUI;

-(void)setCellTitle:(NSString *)title;

-(void)setTime:(NSString *)timeStr;

@end
