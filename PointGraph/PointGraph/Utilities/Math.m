//
//  Math.m
//  RotatingCollectionView
//
//  Created by Cillian on 23/03/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import "Math.h"

@implementation Math

+ (CGFloat)distanceBetween:(CGPoint)point1 and:(CGPoint)point2
{
    CGFloat dx = point2.x - point1.x;
    CGFloat dy = point2.y - point1.y;
    return sqrt(dx*dx + dy*dy);
}

//--

+ (CGFloat)degreesToRadians:(CGFloat)degrees
{
    return degrees * M_PI / 180;
}

+ (CGFloat)radiansToDegrees:(CGFloat)radians
{
    return radians * 180 / M_PI;
}

//--

@end
