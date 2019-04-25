//
//  UIView+RoundedCorners.m
//
//
//  Created by 王会洲 on 16/2/19.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import "UIView+RoundedCorners.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (RoundedCorners)

-(void)setRoundedCorners:(UIRectCorner)corners radius:(CGFloat)radius {
	CGRect rect = self.bounds;
	    
    // Create the path 
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:rect 
                                                   byRoundingCorners:corners
                                                         cornerRadii:CGSizeMake(radius, radius)];
    
    // Create the shape layer and set its path
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = rect;
    maskLayer.path = maskPath.CGPath;
//    maskLayer.borderWidth = 50;
//    maskLayer.borderColor = [UIColor blueColor].CGColor;
    
    // Set the newly created shape layer as the mask for the view's layer
    self.layer.mask = maskLayer;
}



- (void)setBorderWhich:(ViewBorder)borderWhich {
    CGFloat bh = self.layer.borderWidth;
    
    if (borderWhich & ViewBorderBottom) {
        [self addBottomBorder:self borderHeight:bh];
    }
    if (borderWhich &  ViewBorderLeft) {
        [self addLeftBorder:self borderHeight:bh];
    }
    if (borderWhich &  ViewBorderRight) {
        [self addRightBorder:self borderHeight:bh];
    }
    if (borderWhich &  ViewBorderTop) {
        [self addTopBorder:self borderHeight:bh];
    }
    self.layer.borderWidth = 0;
}
- (void)addTopBorder:(UIView *)vi borderHeight:(CGFloat)bh {
    CGColorRef col = vi.layer.borderColor;
    if (vi.layer.borderWidth > 1000 || vi.layer.borderWidth == 0) {
        bh = 1;
    }
    else
        bh = vi.layer.borderWidth;
    CALayer *border = [CALayer layer];
    border.frame = CGRectMake(0, 0, vi.frame.size.width, bh);
    border.backgroundColor = col;
    [vi.layer addSublayer:border];
}
- (void)addLeftBorder:(UIView *)vi borderHeight:(CGFloat)bh{
    CGColorRef col = vi.layer.borderColor;
    if (vi.layer.borderWidth > 1000 || vi.layer.borderWidth == 0) {
        bh = 1;
    }
    else
        bh = vi.layer.borderWidth;
    CALayer *border = [CALayer layer];
    border.frame = CGRectMake(0, 0, bh, vi.frame.size.height);
    border.backgroundColor = col;
    [vi.layer addSublayer:border];
}
- (void)addBottomBorder:(UIView *)vi borderHeight:(CGFloat)bh{
    CGColorRef col = vi.layer.borderColor;
    if (vi.layer.borderWidth > 1000 || vi.layer.borderWidth == 0) {
        bh = 1;
    }
    else
        bh = vi.layer.borderWidth;
    CALayer *border = [CALayer layer];
    border.frame = CGRectMake(0, vi.frame.size.height-bh, vi.frame.size.width, bh);
    border.backgroundColor = col;
    [vi.layer addSublayer:border];
}
- (void)addRightBorder:(UIView *)vi borderHeight:(CGFloat)bh{
    CGColorRef col = vi.layer.borderColor;
    if (vi.layer.borderWidth > 1000 || vi.layer.borderWidth == 0) {
        bh = 1;
    }
    else
        bh = vi.layer.borderWidth;
    CALayer *border = [CALayer layer];
    border.frame = CGRectMake(vi.frame.size.width-bh, 0, bh, vi.frame.size.height);
    border.backgroundColor = col;
    [vi.layer addSublayer:border];
}

/*设置圆角和边框*/
- (void)addRoundedCornersBorder:(UIRectCorner)corners borderWidth:(CGFloat)width withRadii:(CGSize)radii borderColor:(UIColor *)color {
    UIBezierPath *rounded = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corners cornerRadii:radii];
    CAShapeLayer *shapLayer = [[CAShapeLayer alloc] init];
    [shapLayer setPath:rounded.CGPath];
    self.layer.mask = shapLayer;
    
    CAShapeLayer *borderLayer = [CAShapeLayer layer];
    borderLayer.frame = self.bounds;
    borderLayer.lineWidth = width;
    borderLayer.strokeColor = color.CGColor;
    borderLayer.fillColor = [UIColor clearColor].CGColor;
    borderLayer.path = rounded.CGPath;
    
    [self.layer insertSublayer:borderLayer atIndex:0];
}

- (void)addBorderViewShadowOffset:(UIColor *)shadowColor
                     cornerRadius:(CGFloat)cornerRadius
                    shadowOpacity:(CGFloat)shadowOpacity
                                offset:(CGFloat)offset {
    CGRect layerShadowOffsset  = self.frame;
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowOffset = CGSizeMake(0, 0);
    self.layer.cornerRadius = cornerRadius;
    self.layer.shadowOpacity = shadowOpacity;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(-(offset), -(offset), layerShadowOffsset.size.width + (offset) * 2, layerShadowOffsset.size.height + (offset) * 2)];
    self.layer.shadowPath = path.CGPath;
}



@end
