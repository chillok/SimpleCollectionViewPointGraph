//
//  CollectionViewCell.h
//  CircularAnimatedLayout
//
//  Created by Cillian on 29/03/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GraphItem.h"

@interface CollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) IBOutlet UILabel *label;

- (void)setData:(GraphItem *)item;

@end
