//
//  UIButton+FillColor.m
//  TicketCloud
//
//  Created by 王会洲 on 16/2/19.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import "UIButton+FillColor.h"
#import "objc/runtime.h"


//NSString const *orderStrKey = @"orderStrKey";

static const void * orderStrKey = &orderStrKey;

static const void * titleNameBy = &titleNameBy;

@implementation UIButton (FillColor)

@dynamic titleName;
@dynamic orderStr;


-(void)setOrderStr:(NSInteger)orderStr {
    NSNumber *number = [NSNumber numberWithDouble:orderStr];
    objc_setAssociatedObject(self, &orderStrKey, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(NSInteger)orderStr {
    NSNumber *number = objc_getAssociatedObject(self, &orderStrKey);
    return number.floatValue;
}


-(void)setTitleName:(NSString *)titleName {
    objc_setAssociatedObject(self, titleNameBy, titleName, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
-(NSString *)titleName {
    return objc_getAssociatedObject(self, titleNameBy);
}

- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state {
    [self setBackgroundImage:[UIButton imageWithColor:backgroundColor] forState:state];
}

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

@end
