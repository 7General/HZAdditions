//
//  consoleView.m
//  Additions
//
//  Created by 王会洲 on 16/4/15.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import "consoleView.h"
#import "Additions.h"


@implementation consoleView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
        
        
        UILabel * testLabel = [self labelWithMsg:@"Ddddddddddddd"];
        testLabel.frame = CGRectMake(100, 0, 100, 20);
        [self addSubview:testLabel];
        
        
        
        UIImageView * imegs = [[UIImageView alloc] init];
        imegs.image = [UIImage imageNamed:@"洲洲哥的OSjoin.jpg"];
        imegs.center = CGPointMake(self.center.x, self.centerY - 40);
        imegs.bounds = CGRectMake(0, 0, 100, 100);
        [imegs setRoundedCorners:UIRectCornerBottomLeft radius:50];

        [self addSubview:imegs];
        
    }
    return self;
}


-(void)drawRect:(CGRect)rect {
//    CGRect r = CGRectMake(100, 60, 100, 200);
//    [UIView drawRoundRectangleInRect:r
//                                  withRadius:10.0
//                                       color:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.5]];


    //划线
        CGFloat colors []  = {
            0.01f, 0.99f, 0.01f, 1.0f,
            0.01f, 0.99f, 0.99f, 1.0f,
            0.01f, 0.09f, 0.09f
        };
    
    
    [UIView drawLinearGradientInRect:CGRectMake(100, 60, 100, 200) colors:colors];
}

@end
