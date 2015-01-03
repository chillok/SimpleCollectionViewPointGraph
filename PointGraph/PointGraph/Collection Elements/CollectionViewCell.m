//
//  CollectionViewCell.m
//  CircularAnimatedLayout
//
//  Created by Cillian on 29/03/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import "CollectionViewCell.h"
#import "UIView+Custom.h"

@implementation CollectionViewCell

- (void)setData:(GraphItem *)item {
    self.backgroundColor = item.color;
    self.label.text = [NSString stringWithFormat:@"%d", item.value];
    [self round];
}

@end
