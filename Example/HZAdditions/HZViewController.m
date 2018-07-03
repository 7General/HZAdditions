//
//  HZViewController.m
//  HZAdditions
//
//  Created by wanghuizhou21@163.com on 05/25/2018.
//  Copyright (c) 2018 wanghuizhou21@163.com. All rights reserved.
//

#import "HZViewController.h"

#import <HZAdditions/Additions.h>


@interface HZViewController ()

@end

@implementation HZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //    NSString * urlBasic = @"http://www.baidu.com/icloud?index=中国&count=10";
    //    NSString * encodString = [urlBasic URLEvalutionEncoding];
    //    NSLog(@"encodString------%@",encodString);
    //    NSString * deencodString = [encodString URLDecoding];
    //    NSLog(@"deencodString------%@",deencodString);
    
    
    
    //    UIView * testView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    //    testView.backgroundColor = [UIColor redColor];
    //    [self.view addSubview:testView];
    
    
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    [self.view addSubview:imageView];
    
//    UIImage * image = [UIImage imageWithColor:[UIColor redColor]];
    
    // 指定颜色生成对应图片
//    imageView.image = [UIImage imageWithColor:[UIColor redColor]];
    // 指定图片裁剪园
//    UIImage * image = [UIImage imageNamed:@"123"];
//    imageView.image = [UIImage pq_ClipCircleImageWithImage:image circleRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    
    
//    imageView.image = [UIImage RevRectImageColor:[UIColor redColor] forRect:(CGRectMake(0, 0, 20, 20))];
    
    imageView.image = [UIImage RevRectBorderImageColor:[UIColor redColor] forRect:(CGRectMake(0, 0, 50, 50))];
    
    
    
    
    
    
    
    
    
    
    
    
    
}

@end

