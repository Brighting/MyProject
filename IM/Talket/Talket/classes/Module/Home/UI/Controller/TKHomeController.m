//
//  TKHomeController.m
//  Talket
//
//  Created by zhangheliang on 15/5/12.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import "TKHomeController.h"
#import "TKChatRoomController.h"
@interface TKHomeController ()

@end

@implementation TKHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (IBAction)goBtnClick:(id)sender {
    TKChatRoomController *chatRoomVC = [[TKChatRoomController alloc] init];
    [self.navigationController pushViewController:chatRoomVC animated:YES];
}

@end
