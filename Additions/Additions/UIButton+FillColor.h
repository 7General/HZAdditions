//
//  UIButton+FillColor.h
//
//
//  Created by 王会洲 on 16/2/19.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (FillColor)
- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state;

//
@property (nonatomic, strong) NSString * titleName;
//
@property (nonatomic, assign) NSInteger  orderStr;
@end
