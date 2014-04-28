//
//  UIView+Custom.h
//  CircularAnimatedLayout
//
//  Created by Cillian on 29/03/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Custom)

- (void)popUpThenDown;
- (void)popDownThenUp;
- (void)popWithScale:(CGFloat)scale andDuration:(CGFloat)duration andCompletion:(void (^)(void))block;

- (void)hideView;
- (void)showView;

- (void)highlight;
- (void)round;
- (void)roundEdges;



@end
