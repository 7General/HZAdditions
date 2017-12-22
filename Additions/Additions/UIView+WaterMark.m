//
//  UIView+WaterMark.m
//  Additions
//
//  Created by zzg on 2017/12/22.
//  Copyright © 2017年 王会洲. All rights reserved.
//

#define SCREEN_WIDTH          [UIScreen mainScreen].bounds.size.width

#import "UIView+WaterMark.h"
#import "UIImage+WaterMark.h"


static const NSUInteger deltaCount = 1;
@interface UIView()
@property (nonatomic, strong) NSMutableArray * waterMaks;
@end


@implementation UIView (WaterMark)


static inline CGSize sizeOfContent(NSString *contentStr, CGFloat fixWidth, UIFont *font)
{
    CGSize size = CGSizeZero;
    if ([contentStr length] > 0) {
        
        if([contentStr respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)])
        {
            size = [contentStr boundingRectWithSize:CGSizeMake(fixWidth, 9999.f)
                                            options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                         attributes:@{NSFontAttributeName:font,
                                                      NSParagraphStyleAttributeName:getDefaultParagraphStyle()}
                                            context:nil].size;
        }
        else
        {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
            
            size = [contentStr sizeWithFont:font
                          constrainedToSize:CGSizeMake(fixWidth, 9999.f)
                              lineBreakMode:NSLineBreakByWordWrapping];
#pragma clang diagnostic pop
        }
    }
    
    size.height = ceil(size.height);
    return size;
}

static inline id getDefaultParagraphStyle() {
    if (floor(NSFoundationVersionNumber) >= NSFoundationVersionNumber_iOS_6_0) {
        static NSMutableParagraphStyle *s_paragraphStyle = nil;
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            s_paragraphStyle = [[NSMutableParagraphStyle alloc] init];
            s_paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
            s_paragraphStyle.alignment = NSTextAlignmentLeft;
        });
        
        return s_paragraphStyle;
    }
    
    return nil;
}


- (BOOL)addWatermarkWithUser:(NSString *)user attr:(NSDictionary *)attr {
    return [self addWatermarkWithText:user attr:attr];
}

- (BOOL)addWatermarkWithText:(NSString *)text attr:(NSDictionary *)attr {
    
//    [self removeWatermark];
    
    NSString *realText = [self _prepareText:text font:attr[NSFontAttributeName]];
    UIImage *image = [UIImage initWatermarkWithText:realText attr:attr toView:self];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    imageView.image = image;
    imageView.alpha = 0.45;
    [self addSubview:imageView];
    [self setNeedsLayout];
    
    // 如果对uiview添加了runtime成为一个属性的时候，可以打开
//    if (!self.waterMaks) {
//        self.waterMaks = [[NSMutableArray alloc] init];
//    }
    
//    [self.waterMaks addObject:imageView];
    
    return image != nil;
}


- (NSString *)_prepareText:(NSString *)text font:(UIFont *)font{
    if (text && text.length) {
        NSString *placeHolder = @"        ";

        NSString *simpleText = [text stringByAppendingString:placeHolder];
        CGSize textSize = sizeOfContent(simpleText, MAXFLOAT, font);
        NSUInteger singleLineTextCount = floor(SCREEN_WIDTH / textSize.width) + deltaCount;
        NSMutableString *realText = [NSMutableString string];
        while (singleLineTextCount) {
            [realText appendString:simpleText];
            singleLineTextCount--;
        }
        [realText appendString:text];
        return realText;
    }

    return nil;
}
/* 需要添加ruantime成为属性 */
//- (BOOL)removeWatermark {
//    if (self.waterMaks.count) {
//        [self.waterMaks enumerateObjectsUsingBlock:^(UIImageView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//            [obj removeFromSuperview];
//        }];
//        [self.waterMaks removeAllObjects];
//    }
//    return self.waterMaks.count == 0;
//}




@end
