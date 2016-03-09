//
//  LHQPlaceholderTextView.m
//  LHQPlaceholderTextView
//
//  Created by HqLee on 16/3/9.
//  Copyright © 2016年 HqLee. All rights reserved.
//

#import "LHQPlaceholderTextView.h"

@implementation LHQPlaceholderTextView
#pragma -
#pragma mark -
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self awakeFromNib];
    }
    return self;
}

- (void)awakeFromNib{
    //默认文字字体
    self.font = [UIFont systemFontOfSize:15];
    //默认文字颜色
    self.placeholderColor = [UIColor lightGrayColor];
    //监听文字输入
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(textChange) name:UITextViewTextDidChangeNotification object:nil];
}

- (void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

- (void)drawRect:(CGRect)rect{
    
    if (self.hasText)return;
    
    rect = CGRectMake(5, 8, self.frame.size.width - 10, self.frame.size.height);
    [self.placeholder drawInRect:rect withAttributes:@{NSFontAttributeName:self.font,NSForegroundColorAttributeName:self.placeholderColor}];
}

#pragma -
#pragma mark -
- (void)textChange{
    
    [self setNeedsDisplay];
}

#pragma -
#pragma mark - 
- (void)setFont:(UIFont *)font{
    [super setFont:font];
    [self setNeedsDisplay];
}

- (void)setPlaceholder:(NSString *)placeholder{
    _placeholder = [placeholder copy];
    [self setNeedsDisplay];
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor{
    _placeholderColor = placeholderColor;
    [self setNeedsDisplay];
}

- (void)setAttributedText:(NSAttributedString *)attributedText{
    [super setAttributedText:attributedText];
    [self setNeedsDisplay];
}

@end
