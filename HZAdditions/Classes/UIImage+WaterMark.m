//
//  UIImage+WaterMark.m
//  Additions
//
//  Created by zzg on 2017/12/22.
//  Copyright © 2017年 王会洲. All rights reserved.
//
#ifndef GZBWidth
#define GZBWidth(view) view.frame.size.width
#endif

#ifndef GZBHeight
#define GZBHeight(view) view.frame.size.height
#endif


#import "UIImage+WaterMark.h"

static const CGFloat deltaY = 70;
static const CGFloat deltaX = 50;
static const CGFloat fY = -100;
static const CGFloat deltaScreenCount = 2;

@implementation UIImage (WaterMark)
+ (instancetype)initWatermarkWithText:(NSString *)text attr:(NSDictionary *)attr toView:(UIView *)view {
    CGRect strRect = CGRectZero;
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(GZBWidth(view), GZBHeight(view)), NO, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, GZBWidth(view), GZBHeight(view));
    CGContextRotateCTM(context, -M_PI_4 / 3.0);
    CGContextTranslateCTM(context, -GZBWidth(view), -GZBHeight(view));
    CGContextSetBlendMode(context, kCGBlendModeDifference);
    
    CGSize textSize = [text sizeWithAttributes:attr];
    NSUInteger totalLine = GZBHeight(view) / deltaY * 2;
    for (int i = 0; i < totalLine + 2; i++) {
        int offsetY = i * deltaY;
        if (i % 2 == 0) {
            strRect = CGRectMake(-20, fY + offsetY, textSize.width, textSize.height);
        } else if(i % 2 == 1) {
            strRect = CGRectMake(-20+ deltaX, fY + offsetY, textSize.width, textSize.height);
        }
        if (i % 12 == 0) {
            strRect = CGRectZero;
        }
        
        [text drawInRect:strRect withAttributes:attr];
    }
    UIImage *watermarkImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return watermarkImage;
    
}
@end
