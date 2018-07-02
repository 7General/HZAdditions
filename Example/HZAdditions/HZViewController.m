//
//  HZViewController.m
//  HZAdditions
//
//  Created by wanghuizhou21@163.com on 05/25/2018.
//  Copyright (c) 2018 wanghuizhou21@163.com. All rights reserved.
//

#import "HZViewController.h"
#import <HZAdditions/NSString+Additions.h>


@interface HZViewController ()

@end

@implementation HZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString * urlBasic = @"http://www.baidu.com/icloud?index=中国&count=10";
    NSString * encodString = [urlBasic URLEvalutionEncoding];
    NSLog(@"encodString------%@",encodString);
    NSString * deencodString = [encodString URLDecoding];
    NSLog(@"deencodString------%@",deencodString);
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
