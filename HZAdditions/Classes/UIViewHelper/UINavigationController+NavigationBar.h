//
//  UINavigationController+Helper.h
//  
//
//  Created by 王会洲 on 2018/8/14.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (NavigationBar)


/**
 隐藏导航栏底线

 @param viewController 当前的控制器
 */
- (void) findHairlineImageViewUnderViewController:(UIViewController *)viewController;


/**
 显示当前导航栏底线

 @param viewController 当前控制器
 */
- (void) hiddenHairlineImageViewUnderViewContro:(UIViewController *)viewController;

@end
