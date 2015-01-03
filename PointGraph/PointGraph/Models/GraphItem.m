//
//  Cell.m
//  BezirGraph
//
//  Created by Cillian on 26/04/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import "GraphItem.h"
#import "LoremIpsum.h"

@implementation GraphItem

- (id)initWithValue:(NSInteger)value andColor:(UIColor *)color {
    self = [super init];
    if (self) {
        self.color = color;
        self.value = value;
        LoremIpsum *lorem = [LoremIpsum new];
        self.loremIpsum = [lorem words:25];
    }
    return self;
}

@end
