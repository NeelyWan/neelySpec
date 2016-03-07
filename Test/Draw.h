//
//  Draw.h
//  Test
//
//  Created by Neely Wan on 15/8/11.
//  Copyright (c) 2015年 万匿里. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Draw : UIView

@property (nonatomic,strong)UILabel *label;
@property (nonatomic,assign)double sum;
@property (nonatomic,assign)double duration;
@property (nonatomic,assign)double interval;
@property (nonatomic,assign)NSInteger times;

- (void)calculateMoney;
@end
