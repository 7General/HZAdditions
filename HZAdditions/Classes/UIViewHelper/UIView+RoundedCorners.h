//
//  UIView+RoundedCorners.h
//
//
//  Created by 王会洲 on 16/2/19.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger, ViewBorder) {
    ViewBorderTop = 1<<1,
    ViewBorderLeft = 1<<2,
    ViewBorderBottom = 1<<3,
    ViewBorderRight = 1<<4,
};


@interface UIView (RoundedCorners)

@property (nonatomic, assign) ViewBorder borderWhich;

-(void)setRoundedCorners:(UIRectCorner)corners radius:(CGFloat)radius;

/**
 设置圆角和边框共存
 
 @param corners 位置
 @param width 边宽
 @param radii 角度
 @param color 边的颜色
 */
- (void)addRoundedCornersBorder:(UIRectCorner)corners borderWidth:(CGFloat)width withRadii:(CGSize)radii borderColor:(UIColor *)color;


/**
 添加UIView的边框阴影（四周都添加）
 
 @param shadowColor 阴影颜色
 @param cornerRadius 阴影弧度
 @param shadowOpacity 阴影透明度
 @param offset 阴影便宜
 */
- (void)addBorderViewShadowOffset:(UIColor *)shadowColor
                     cornerRadius:(CGFloat)cornerRadius
                    shadowOpacity:(CGFloat)shadowOpacity
                           offset:(CGFloat)offset;

@end
