//
//  PointObj.h
//  RotatingCollectionView
//
//  Created by Cillian on 22/03/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PointObj : NSObject

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;

- (id)initWithX:(CGFloat)x andY:(CGFloat)y;

- (CGPoint)point;

@end
