//
//  SelectedAreaViewController.h
//  BezirGraph
//
//  Created by Cillian on 27/04/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GraphItem.h"

@interface SelectedAreaViewController : UIViewController

- (void)setup;
- (void)setDataForItem:(GraphItem *)item atPoint:(CGPoint)point;

- (void)hide;
- (void)show;

@end
