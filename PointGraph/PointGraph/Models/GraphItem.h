//
//  Cell.h
//  BezirGraph
//
//  Created by Cillian on 26/04/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GraphItem : NSObject

- (id)initWithValue:(NSInteger)value andColor:(UIColor *)color;

@property (nonatomic, strong) UIColor *color;
@property (nonatomic) NSInteger value;
@property (nonatomic, copy) NSString *loremIpsum;

@end
