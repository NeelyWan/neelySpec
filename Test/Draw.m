
//
//  Draw.m
//  Test
//
//  Created by Neely Wan on 15/8/11.
//  Copyright (c) 2015年 万匿里. All rights reserved.
//

#import "Draw.h"


#define KMaxChnageCount 100



@interface Draw ()
{
    
    double  _standard;
}

// X * X * X + X * X + X



@property (nonatomic,assign)double k;
@property (nonatomic,assign)double b;
@property (nonatomic,strong)NSTimer *timer;
@property (nonatomic,assign)NSInteger count;


@end

@implementation Draw



- (double)_cal:(double )x{
    double y = x * x + x;
    return y;
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame: frame]) {
        [self _setSubViews];
    }
    return self;
}

- (void)_setSubViews{
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(20, 30, self.bounds.size.width-40, 70)];
    self.label.font = [UIFont systemFontOfSize:35.0];
    self.label.backgroundColor = [UIColor orangeColor];
    self.label.textColor = [UIColor whiteColor];
    [self addSubview:self.label];
}

- (void)calculateMoney{
    _times =(NSInteger )(_duration/_interval);
    _standard = [self _cal:_times];;
   // _b = (self.sum - _times * _times)/_times;
    _count = 0;
    _k = self.sum/_standard;
    _timer = [NSTimer scheduledTimerWithTimeInterval:_interval target:self selector:@selector(timerAction:) userInfo:nil repeats:YES];
}

- (void)timerAction:(NSTimer *)timer{

    if (_count >= _times) {
        self.label.text = [NSString stringWithFormat:@"%.2f",self.sum];
        [timer invalidate];
        timer = nil;
    }else{
        double current = _k * [self _cal:_count];
        NSString *string = [NSString stringWithFormat:@"%.2f",current];
        self.label.text =  string;
        _count ++ ;
        
    }

}

//- (void)drawRect:(CGRect)rect{
//    
//    
//    
//}
//-(void)drawRadialGradient:(CGContextRef)context{
//    
//    
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
