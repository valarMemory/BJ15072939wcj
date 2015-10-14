//
//  RootViewController.m
//  UI-Block
//
//  Created by lanou3g on 15/9/20.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "RootViewController.h"
#import "NextViewController.h"
@interface RootViewController ()
@property (nonatomic,strong)UILabel *lable;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    
    self.lable = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
    self.lable.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:_lable];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"下一页" style:(UIBarButtonItemStylePlain) target:self action:@selector(rightAction:)];
    
    
    
    // Do any additional setup after loading the view.
}

- (void)rightAction:(UIBarButtonItem *)sender
{
    NextViewController *next = [[NextViewController alloc]init];
    [self.navigationController pushViewController:next animated:YES];
    next.mblock = ^(NSString *s)
    {
        _lable.text = s;
    };
    // 这是对block的实现  先调用在实现 这就是block的反向调用
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
