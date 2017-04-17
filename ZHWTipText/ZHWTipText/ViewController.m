//
//  ViewController.m
//  ZHWTipText
//
//  Created by zhanghongwei on 17/4/17.
//  Copyright © 2017年 zhanghongwei. All rights reserved.
//

#import "ViewController.h"
#import "ZHWTipText.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickBtn:(id)sender {
    [self showTip];
    [self showTip1];
}


- (void)showTip {
    
    ZHWTipText *tip = [[ZHWTipText alloc] init];
    [self.view addSubview:tip];
    [tip mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@20);
        make.top.equalTo(@50);
    }];
    [tip showTip:@"你很棒！" position:TipArrowPosition_Left arrowX:0];
}

- (void)showTip1 {
    
    ZHWTipText *tip = [[ZHWTipText alloc] init];
    [self.view addSubview:tip];
    [tip mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(@(-20));
        make.top.equalTo(@80);
        make.width.equalTo(@100);
    }];
    [tip showTip:@"你很棒！你很棒！你很棒！你很棒！你很棒！你很棒！你很棒！" position:TipArrowPosition_Right arrowX:0];
}

@end




















