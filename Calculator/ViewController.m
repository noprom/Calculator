//
//  ViewController.m
//  Calculator
//
//  Created by noprom on 15/6/30.
//  Copyright (c) 2015年 noprom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)compute;
@property (weak, nonatomic) IBOutlet UITextField *txtNum1;
@property (weak, nonatomic) IBOutlet UITextField *txtNum2;
@property (weak, nonatomic) IBOutlet UILabel *lableResult;

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

// 点击计算
- (IBAction)compute {
    
    // 1.获取用户的输入
    NSString *num1 = self.txtNum1.text;
    NSString *num2 = self.txtNum2.text;
    
    // 2.计算求和
    int n1 = [num1 intValue];
    int n2 = [num2 intValue];
    int result = n1 + n2;
    
    // 3.显示结果
    self.lableResult.text = [NSString stringWithFormat:@"%d",result];
    
    // 4.将键盘自动弹回
    // 方法一：
//    [self.txtNum1 resignFirstResponder];
//    [self.txtNum2 resignFirstResponder];
    
    // 方法二：
    // 让当前view停止编辑， 则键盘自动回去
    [self.view endEditing:YES];
    
}
@end
