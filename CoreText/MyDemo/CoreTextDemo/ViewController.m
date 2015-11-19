//
//  ViewController.m
//  CoreTextDemo
//
//  Created by zhangheliang on 15/8/13.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import "ViewController.h"
#import "BDDCoreTextView.h"
#import "BDDCoreTextViewData.h"
#import "BDDCoreTextPlainTextData.h"
#import "BDDCoreTextAttachData.h"

#import "BDDCoreTextConfig.h"
@interface ViewController ()
@property (nonatomic, strong) BDDCoreTextView       *coreTextView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.coreTextView = [[BDDCoreTextView alloc] initWithFrame:CGRectMake(10, 50, 300, 500)];
    BDDCoreTextViewData *coreTextViewData = [[BDDCoreTextViewData alloc] init];
    coreTextViewData.width = 300;
    coreTextViewData.height = 500;
    BDDCoreTextPlainTextData *plainTextData1 = [[BDDCoreTextPlainTextData alloc] init];
    BDDCoreTextConfig *config1 = [[BDDCoreTextConfig alloc] init];
    config1.textColor = [UIColor greenColor];
    config1.lineSpace = 20;
    config1.paragraphSpace = 10;
    plainTextData1.text = @"init init init init init init init init init init init init init init init init init init init init init init init  init init init init init init init init init init init init init init init init init init ";
    plainTextData1.config = config1;
    BDDCoreTextPlainTextData *plainTextData2 = [[BDDCoreTextPlainTextData alloc] init];
    plainTextData2.text = @"alloc alloc alloc alloc alloc alloc alloc alloc alloc alloc alloc alloc alloc alloc alloc alloc alloc ";
    BDDCoreTextPlainTextData *plainTextData3 = [[BDDCoreTextPlainTextData alloc] init];
    BDDCoreTextConfig *config3 = [[BDDCoreTextConfig alloc] init];
    config3.textColor = [UIColor grayColor];
    config3.lineSpace = 20;
    plainTextData3.config = config3;
    plainTextData3.text = @"width width width width width width width width width width width width width width width width width width width width width width width width width width width width width width width width width width width width width width width width width width width width";
    BDDCoreTextAttachData *attachData = [[BDDCoreTextAttachData alloc] init];
    attachData.attachObject = [UIImage imageNamed:@"haha.png"];
    coreTextViewData.contentArray = [@[plainTextData1,attachData,plainTextData2] mutableCopy];
    self.coreTextView.data = coreTextViewData;
    _coreTextView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:_coreTextView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
