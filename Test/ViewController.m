//
//  ViewController.m
//  Test
//
//  Created by Neely Wan on 15/8/11.
//  Copyright (c) 2015年 万匿里. All rights reserved.
//

#import "ViewController.h"
#import "Draw.h"
#import "UILabel+BezierAnimation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    self.view.backgroundColor = [UIColor whiteColor];
//    Draw *draw = [[Draw alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 300)];
//    draw.backgroundColor = [UIColor whiteColor];
//    draw.duration = 2;
//    draw.interval = 0.01;
//    draw.sum = 23323.25;
//    [self.view addSubview:draw];
//    [draw calculateMoney];
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(20, 64, self.view.bounds.size.width-40, 50)];
    [self.view addSubview:lable];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [lable animationFromnum:0 toNum:2323.28 duration:2];
    });

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
