//
//  UIView+Label.m
//
//
//  Created by 王会洲 on 16/2/19.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import "UIView+Label.h"

@implementation UIView(Label)

-(UILabel*)labelWithMsg:(NSString*)msg
{
    return [self labelWithMsg:msg color:[UIColor whiteColor]];
}

-(UILabel*)labelWithMsg:(NSString*)msg color:(UIColor*)color
{
    return [self labelWithMsg:msg color:color align:NSTextAlignmentLeft fontSize:10];
}

-(UILabel*)labelWithMsg:(NSString*)msg color:(UIColor*)color align:(NSTextAlignment)alignment fontSize:(int)size
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 20)];
    label.textColor = color;
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = alignment;
    label.font = [UIFont fontWithName:@"Arial" size:size];
    label.text = msg;
    [self addSubview:label];
    return label;
}

-(void)showMsg:(NSString*)msg frame:(CGRect)frame color:(UIColor*)color
{
    UILabel *label = [self labelWithMsg:msg color:color];
    label.frame = frame;
    [self addSubview:label];
}
@end
