//
//  UILabel+BezierAnimation.m
//  Test
//
//  Created by Neely Wan on 15/8/12.
//  Copyright (c) 2015年 万匿里. All rights reserved.
//

#import "UILabel+BezierAnimation.h"
#import "WSBezier.h"

#define KMaxTimes 100


@implementation UILabel (BezierAnimation)

NSMutableArray *totlePoints; //纪录所有的点。

WSBezier *bezier;

double _duration;
double _fromNum;
double _toNum;
double _lastTime;
int _index;


- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        self.font = [UIFont systemFontOfSize:35];
        self.backgroundColor = [UIColor whiteColor];
        [self _initBezier];
        [self _cleanVars];
    }
    return self;
}

- (void)_cleanVars{
    
    _lastTime = 0;
    _index = 0;
    self.text = @"0.00";
    
}

//初始化 控制点
- (void)_initBezier{
    bezier = [[WSBezier alloc] init];
}

- (void)animationFromnum:(double)fromNum toNum:(double)toNum duration:(double)duration{
    
    [self _cleanVars];
    _duration = duration;
    _fromNum = fromNum;
    _toNum = toNum;
    
    totlePoints = [NSMutableArray array];
    double dt = 1.0 / (KMaxTimes - 1);
    for (int i = 0; i < KMaxTimes; i ++ ) {
        
        WSPoint point = [bezier  pointWithdt:dt * i];
        double currTime = point.x * _duration;
        double currValue = point.y * (_toNum - _fromNum) + _fromNum;
        
        NSArray *array = [NSArray arrayWithObjects:[NSNumber numberWithFloat:currTime] , [NSNumber numberWithFloat:currValue], nil];
        [totlePoints addObject:array];
        
    }
    
    [self changeNumberBySelector];
    
}

- (void)changeNumberBySelector {
    if (_index>= KMaxTimes) {
        self.text = [NSString stringWithFormat:@"%.2f",_toNum];
        return;
    } else {
        NSArray *pointValues = [totlePoints objectAtIndex:_index];
        _index++;
        double value = [(NSNumber *)[pointValues objectAtIndex:1] doubleValue];
        double currentTime = [(NSNumber *)[pointValues objectAtIndex:0] doubleValue];
        double timeDuration = currentTime - _lastTime;
        _lastTime = currentTime;
        self.text = [NSString stringWithFormat:@"%.2f",value];
        [self performSelector:@selector(changeNumberBySelector) withObject:nil afterDelay:timeDuration];
    }
}




@end
