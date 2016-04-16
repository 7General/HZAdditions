//
//  Draw.m
//  Additions
//
//  Created by 王会洲 on 16/4/15.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import "Draw.h"

@implementation Draw

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.frame = CGRectMake(0, 100, 320, 300);
        
    }
    return self;
}
-(void)drawRect:(CGRect)rect {
//        CGRect r = CGRectMake(100, 60, 100, 200);
//        [UIView drawRoundRectangleInRect:r
//                              withRadius:10.0
//                                   color:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.5]];
}


@end
