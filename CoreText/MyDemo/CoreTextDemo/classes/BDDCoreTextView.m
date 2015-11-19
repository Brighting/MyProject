//
//  BDDCoreTextView.m
//  CoreTextDemo
//
//  Created by zhangheliang on 15/8/13.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import "BDDCoreTextView.h"
typedef enum BDDCoreTextViewState:NSUInteger {
    BDDCoreTextViewStateUnknown = 0,
    BDDCoreTextViewStateNormal,
    BDDCoreTextViewStateTouching,
    BDDCoreTextViewStateSelecting
}BDDCoreTextViewState;

@interface BDDCoreTextView()<UIGestureRecognizerDelegate>

@property (nonatomic) NSInteger                 selectionStartPosition;
@property (nonatomic) NSInteger                 selectionEndPosition;
@property (nonatomic) BDDCoreTextViewState      state;
@property (strong, nonatomic) UIImageView       *leftSelectionAnchor;
@property (strong, nonatomic) UIImageView       *rightSelectionAnchor;

@end


@implementation BDDCoreTextView

#pragma mark - private methods
- (void)setupGesture{
    UIGestureRecognizer * tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                                  action:@selector(tapGestureDetected:)];
    [self addGestureRecognizer:tapRecognizer];
    
    UIGestureRecognizer *longPressRecognizer = [[UILongPressGestureRecognizer alloc] initWithTarget:self
                                                                                             action:@selector(longPressedGuestureDetected:)];
    [self addGestureRecognizer:longPressRecognizer];
    
    UIGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                 action:@selector(panGuestureDetected:)];
    [self addGestureRecognizer:panRecognizer];
    
    self.userInteractionEnabled = YES;
}
- (void)tapGestureDetected:(UIGestureRecognizer *)recognizer{

}
- (void)longPressedGuestureDetected:(UILongPressGestureRecognizer *)recognizer{
    
}
-(void)panGuestureDetected:(UIGestureRecognizer *)recognizer{
    
}
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    if (self.data == nil) {
        return;
    }
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CTFrameDraw(self.data.coreTextFrame, context);
}
-(void)drawAttachData{
    if (_data.contentArray.count == 0) {
        return;
    }
    CFArrayRef lines = CTFrameGetLines(_data.coreTextFrame);
    
    
}
@end
