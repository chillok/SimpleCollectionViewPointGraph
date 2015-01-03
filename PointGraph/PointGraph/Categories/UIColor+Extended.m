//
//  UIColor+Extended.m
//  LottoPrototype
//
//  Created by Cillian on 07/04/2014.
//  Copyright (c) 2014 Cillian. All rights reserved.
//

#import "UIColor+Extended.h"

@implementation UIColor (Extended)

+ (UIColor *)random {
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}

@end
