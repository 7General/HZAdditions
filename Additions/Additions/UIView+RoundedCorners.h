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

@end
