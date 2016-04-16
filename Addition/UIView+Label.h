//
//  UIView+Label.h
//
//
//  Created by 王会洲 on 16/2/19.
//  Copyright © 2016年 王会洲. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UIView(Label)

-(UILabel*)labelWithMsg:(NSString*)msg;
-(UILabel*)labelWithMsg:(NSString*)msg color:(UIColor*)color;
-(UILabel*)labelWithMsg:(NSString*)msg color:(UIColor*)color align:(NSTextAlignment)alignment fontSize:(int)size;

-(void)showMsg:(NSString*)msg frame:(CGRect)frame color:(UIColor*)color;

@end
