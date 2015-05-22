//
//  TKChatRoomController.m
//  Talket
//
//  Created by zhangheliang on 15/5/12.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import "TKChatRoomController.h"
#import "TKMessageInputView.h"
#import "TKChatRoomSendCell.h"
#import "TKChatRoomReceiveCell.h"


@interface TKChatRoomController ()<UITableViewDataSource,UITableViewDelegate>
//UI
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet TKMessageInputView *messageInputView;

//Data
@property (nonatomic, strong ) NSMutableArray           *messageList;

@end

@implementation TKChatRoomController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - private methods
-(void)setupUI{
    //table View
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.estimatedRowHeight = 65.0;
    _tableView.rowHeight = UITableViewAutomaticDimension;
    [_tableView registerNib:[UINib nibWithNibName:@"TKChatRoomSendCell" bundle:nil] forCellReuseIdentifier:@"TKChatRoomSendCell"];
    [_tableView registerNib:[UINib nibWithNibName:@"TKChatRoomReceiveCell" bundle:nil] forCellReuseIdentifier:@"TKChatRoomReceiveCell"];
}
#pragma mark - UITableViewDataSource methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1000;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = nil;
    TKChatRoomReceiveCell *receiveCell = nil;
    TKChatRoomSendCell *sendCell = nil;
    sendCell = [_tableView dequeueReusableCellWithIdentifier:@"TKChatRoomSendCell"];
    sendCell.mMessageType = TKMessageTypePlainText;
    [sendCell setMessageText:@"HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH"];
    cell = sendCell;
    return cell;
}
@end
