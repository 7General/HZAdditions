//
//  UIImage+Helper.h
//  HZAdditions
//
//  Created by zzg on 2018/7/3.
//

#import <UIKit/UIKit.h>

@interface UIImage (Helper)

+ (UIImage *)imageWithColor:(UIColor *)color;

+ (UIImage *)pq_ClipCircleImageWithImage:(UIImage *)image circleRect:(CGRect)rect;



+ (UIImage *)RevRectImageColor:(UIColor *)color forRect:(CGRect)rect;

+ (UIImage *)RevRectBorderImageColor:(UIColor *)color forRect:(CGRect)rect;

@end
