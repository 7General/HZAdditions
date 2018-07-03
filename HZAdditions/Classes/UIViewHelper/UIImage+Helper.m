//
//  UIImage+Helper.m
//  HZAdditions
//
//  Created by zzg on 2018/7/3.
//

#import "UIImage+Helper.h"

@implementation UIImage (Helper)
+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}


+ (UIImage *)pq_ClipCircleImageWithImage:(UIImage *)image circleRect:(CGRect)rect {
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0);
    UIBezierPath * path = [UIBezierPath bezierPathWithOvalInRect:rect];
    [path addClip];
    [image drawAtPoint:CGPointZero];
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

+ (UIImage *)RevRectImageColor:(UIColor *)color forRect:(CGRect)rect {
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect InRect = CGRectMake(0, 0, rect.size.width * 0.5, rect.size.height * 0.5);
    CGContextAddEllipseInRect(ctx, InRect);
    CGContextSetFillColorWithColor(ctx, [color CGColor]);
    CGContextFillPath(ctx);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}


+ (UIImage *)RevRectBorderImageColor:(UIColor *)color forRect:(CGRect)rect {
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    [[UIColor whiteColor] set];
    CGContextFillRect(contextRef, rect);
    
    [[UIColor redColor] set];
    
    CGRect inRect = CGRectMake(1, 1, rect.size.width * 0.5, rect.size.height * 0.5);
//    CGContextAddEllipseInRect(contextRef, inRect);
    CGContextFillEllipseInRect(contextRef,inRect);
    
    CGContextStrokePath(contextRef);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
    
}
@end

