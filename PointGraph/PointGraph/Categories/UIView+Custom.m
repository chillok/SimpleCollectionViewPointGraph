//
//  UIView+Custom.m
//  CircularAnimatedLayout
//
//  Created by Cillian on 29/03/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import "UIView+Custom.h"

@implementation UIView (Custom)

// animations

- (void)popWithScale:(CGFloat)scale andDuration:(CGFloat)duration andCompletion:(void (^)(void))block {
    [UIView animateWithDuration:duration animations:^{
        self.transform = CGAffineTransformMakeScale(scale, scale);
    } completion:^(BOOL finished) {
        if (block) {
            block();
        }
    }];
}

- (void)popUpThenDown {
    [self popWithScale:1.2 andDuration:0.2 andCompletion:^{
        [self popWithScale:1.0 andDuration:0.1 andCompletion:nil];
    }];
}

- (void)popDownThenUp {
    [self popWithScale:0.8 andDuration:0.1 andCompletion:^{
        [self popWithScale:1.0 andDuration:0.05 andCompletion:nil];
    }];
}

- (void)hideView {
    [UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.alpha = 0;
    } completion:nil];
}

- (void)showView {
    [UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.alpha = 1;
    } completion:nil];
}

// -

- (void)highlight {
    self.backgroundColor = [UIColor whiteColor];
    [UIView animateWithDuration:0.5 animations:^{
        self.backgroundColor = [UIColor clearColor];
    }];
}

// ui changes

- (void)round {
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = self.frame.size.height/2;
}

- (void)roundEdges {
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 5;
}

@end
