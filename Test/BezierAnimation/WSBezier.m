//
//  WSBezier.m
//  Test
//
//  Created by Neely Wan on 15/8/11.
//  Copyright (c) 2015年 万匿里. All rights reserved.
//

#import "WSBezier.h"

@implementation WSBezier


- (instancetype)init{
    
    if (self = [super init]) {
        [self _initPoints];
    }
    return self;
}

- (void)_initPoints{
    
    WSPoint start;
    WSPoint first;
    WSPoint second;
    WSPoint end;
    start.x = 0;
    start.y = 0;
    first.x = 0.25;
    first.y = 0.1;
    second.x = 0.25;
    second.y = 1;
    end.x = 1;
    end.y = 1;
    
    self.wsStart = start;
    self.wsFirst = first;
    self.wsSecond = second;
    self.wsEnd = end;

}


//贝塞尔 －
//y=y0·(1-t)³+3·y1·t·(1-t)²+3·y2·t²·(1-t)+y3·t³
//x=x0·(1-t)³+3·x1·t·(1-t)²+3·x2·t²·(1-t)+x3·t³

//贝塞尔的 四个 控制点
//（0 ， 0 ） (0 , 0.57) (0.44 , 1 ) (1 ,1);


- (WSPoint)pointWithdt:(double )dt{
    
    WSPoint result;
    
    double t = 1 - dt;
    double tSqure = t * t;
    double tCube = t * tSqure;
    double dtSqure = dt * dt;
    double dtCube = dtSqure * dt;
    
    result.x = self.wsStart.x * tCube + 3 * self.wsFirst.x * dt * tSqure  +  3 * self.wsSecond.x * dtSqure * t + self.wsEnd.x * dtCube;
    result.y = self.wsStart.y * tCube + 3 * self.wsFirst.y * dt * tSqure  +  3 * self.wsSecond.y * dtSqure * t + self.wsEnd.y * dtCube;
    return result;
    
    
}

@end
