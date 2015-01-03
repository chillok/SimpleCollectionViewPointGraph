//
//  SelectedAreaViewController.m
//  BezirGraph
//
//  Created by Cillian on 27/04/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import "SelectedAreaViewController.h"
#import "UIView+Custom.h"

@interface SelectedAreaViewController ()

@property (nonatomic, weak) IBOutlet UILabel *largeText;
@property (nonatomic, weak) IBOutlet UIView *containerView;
@property (nonatomic, weak) IBOutlet UIView *indicatorView;
@property (nonatomic, weak) IBOutlet UITextView *textView;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *indicatorViewLeadingConstraint;

@end

@implementation SelectedAreaViewController


// TODO: I don't know why this isn't called and making changes at the correct time so
// we're calling 'setup' from the setData below again..
- (id)initWithCoder:(NSCoder*)aDecoder
{
    if(self = [super initWithCoder:aDecoder]) {
        [self setup];
    }
    return self;
}

- (void)setup {
    [self.containerView roundEdges];
    
    // triagle that square!
    UIBezierPath *path = [UIBezierPath new];
    [path moveToPoint:CGPointMake(self.indicatorView.frame.size.width/2, 0)];
    [path addLineToPoint:CGPointMake(self.indicatorView.frame.size.width, self.indicatorView.frame.size.height)];
    [path addLineToPoint:CGPointMake(0, self.indicatorView.frame.size.height)];
    [path addLineToPoint:CGPointMake(self.indicatorView.frame.size.width/2, 0)];
    
    CAShapeLayer *mask = [CAShapeLayer new];
    mask.frame = self.indicatorView.bounds;
    mask.path = path.CGPath;
    self.indicatorView.layer.mask = mask;
}

- (void)setDataForItem:(GraphItem *)item atPoint:(CGPoint)point {
    [self setup];
    
    if (!CGPointEqualToPoint(point, CGPointZero)) {
        self.indicatorViewLeadingConstraint.constant = point.x;
        [self.view setNeedsUpdateConstraints];
    }
    
    [UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        [self.view layoutIfNeeded];
        self.containerView.backgroundColor = item.color;
        self.indicatorView.backgroundColor = item.color;
        self.largeText.text = [NSString stringWithFormat:@"%d", item.value];
        self.textView.text = item.loremIpsum;
    } completion:nil];
}

- (void)hide {
    [self.view hideView];
}

- (void)show {
    [self.view showView];
}

@end
