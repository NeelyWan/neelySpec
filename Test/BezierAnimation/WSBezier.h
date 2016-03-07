//
//  WSBezier.h
//  Test
//
//  Created by Neely Wan on 15/8/11.
//  Copyright (c) 2015年 万匿里. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef struct
{
    double x;
    double y;
} WSPoint;


@interface WSBezier : NSObject

@property (nonatomic,assign) WSPoint wsStart;
@property (nonatomic,assign) WSPoint wsFirst;
@property (nonatomic,assign) WSPoint wsSecond;
@property (nonatomic,assign) WSPoint wsEnd;


- (WSPoint )pointWithdt:(double )dt;


@end
