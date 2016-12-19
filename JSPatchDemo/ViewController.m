//
//  ViewController.m
//  JSPatchDemo
//
//  Created by ZOMAKE on 2016/12/15.
//  Copyright © 2016年 ZOMAKEZOMAKE. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"原始标题";
    self.view.backgroundColor = [UIColor colorWithRed:0.261 green:1.000 blue:0.766 alpha:1.000];
    [self creatView];
}

//测试替换OC方法
-(void)creatView{
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(20, 100, 200, 80);
    label.textColor = [UIColor blackColor];
    label.text = @"我是原始文字";
    label.backgroundColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
