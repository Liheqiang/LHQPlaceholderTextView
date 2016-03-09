//
//  ViewController.m
//  LHQPlaceholderTextViewExample
//
//  Created by HqLee on 16/3/9.
//  Copyright © 2016年 HqLee. All rights reserved.
//

#import "ViewController.h"
#import "LHQPlaceholderTextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LHQPlaceholderTextView *textView = [[LHQPlaceholderTextView alloc] initWithFrame:CGRectMake(100, 100, 300, 300)];
    textView.backgroundColor = [UIColor yellowColor];
    textView.placeholder = @"xxxxxxxx";
    [self.view addSubview:textView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
