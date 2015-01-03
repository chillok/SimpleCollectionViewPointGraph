//
//  NSArray+Extended.m
//  BezirGraph
//
//  Created by Cillian on 27/04/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import "NSArray+Extended.h"

@implementation NSArray (Extended)

// returns an array the of this array's index paths, it's a bit.... meh
- (NSArray *)indexPaths {
    
    NSInteger count = 0;
    NSMutableArray *mutableArray = [NSMutableArray array];
    
    while (count < self.count) {
        [mutableArray addObject:[NSIndexPath indexPathForItem:count inSection:0]];
        count++;
    }
    
    return mutableArray;
}

@end
