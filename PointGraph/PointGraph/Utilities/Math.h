//
//  Math.h
//  RotatingCollectionView
//
//  Created by Cillian on 23/03/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Math : NSObject

+ (CGFloat)distanceBetween:(CGPoint)point1 and:(CGPoint)point2;
+ (CGFloat)degreesToRadians:(CGFloat)degrees;
+ (CGFloat)radiansToDegrees:(CGFloat)radians;

@end
