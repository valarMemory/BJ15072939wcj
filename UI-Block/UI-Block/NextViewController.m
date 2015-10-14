//
//  NextViewController.m
//  UI-Block
//
//  Created by lanou3g on 15/9/20.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()
@property (nonatomic,strong)UITextField *text;
@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    
    self.text = [[UITextField alloc]initWithFrame:CGRectMake(100, 100, 200, 60)];
    self.text.backgroundColor = [UIColor whiteColor];
    
    
    
    [self.view addSubview:_text];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"上一页" style:(UIBarButtonItemStylePlain) target:self action:@selector(leftAction:)];
    
    // Do any additional setup after loading the view.
}

- (void)leftAction:(UIBarButtonItem *)sender
{
    
    // 对block进行调用 作用是把text的值存进去
    self.mblock(self.text.text);
    [self.navigationController popViewControllerAnimated:YES];
}

//// typedef block 第一种形式
//typedef int (^p) (int,int);
//
//p p1 = ^(int a,int b)
//{
//    return a+b;
//};



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
