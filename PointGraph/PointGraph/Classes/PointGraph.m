//
//  BezierStuff.m
//  BezirGraph
//
//  Created by Cillian on 28/04/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import "PointGraph.h"
#import "PointObj.h"
#import "UIColor+Extended.h"

@interface PointGraph()

@property (nonatomic, strong) UIColor *lineColour;

@end


@implementation PointGraph {
    NSArray *points;
}

- (id)initWithFrame:(CGRect)rect andPoints:(NSArray *)array andLineColour:(UIColor *)color {
    
    if (self = [super initWithFrame:rect]) {
        points = [NSArray arrayWithArray:array];
        self.backgroundColor = [UIColor clearColor];
        self.alpha = 0;
        self.lineColour = color;
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    if (points.count) {
        
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetLineWidth(context, 2.0);
        CGContextSetStrokeColorWithColor(context, self.lineColour.CGColor);
        
        PointObj *firstPoint = (PointObj *)[points objectAtIndex:0];
        CGContextMoveToPoint(context, firstPoint.point.x, firstPoint.point.y);
        NSInteger count = 1;
        while (count < points.count) {
            PointObj *pointObj = (PointObj *)[points objectAtIndex:count];
            CGContextAddLineToPoint(context, pointObj.point.x, pointObj.point.y);
            count++;
        }
        
        CGContextStrokePath(context);
    }
}


@end
