//
//  PointObj.m
//  RotatingCollectionView
//
//  Created by Cillian on 22/03/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import "PointObj.h"

@implementation PointObj

- (id)initWithX:(CGFloat)x andY:(CGFloat)y {
    self = [super init];
    if (self) {
        self.x = x;
        self.y = y;
    }
    
    return self;
}

- (CGPoint)point {
    return CGPointMake(self.x, self.y);
}
@end
