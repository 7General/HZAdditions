//
//  UIImage+WaterMark.h
//  Additions
//
//  Created by zzg on 2017/12/22.
//  Copyright © 2017年 王会洲. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (WaterMark)
+ (instancetype)initWatermarkWithText:(NSString *)text attr:(NSDictionary *)attr toView:(UIView *)view;
@end
