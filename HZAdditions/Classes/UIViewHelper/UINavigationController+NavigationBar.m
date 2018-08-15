//
//  UINavigationController+Helper.m
//
//
//  Created by 王会洲 on 2018/8/14.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import "UINavigationController+NavigationBar.h"
#import "UIViewController+NavigationBar.h"

@implementation UINavigationController (NavigationBar)


- (UIImageView *)findHairlineImageViewUnder:(UIView *)view {
    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
        return (UIImageView *)view;
    }
    
    for (UIView *subview in view.subviews) {
        UIImageView *imageView = [self findHairlineImageViewUnder:subview];
        if (imageView) {
            return imageView;
        }
    }
    return nil;
}

- (void) findHairlineImageViewUnderViewController:(UIViewController *)viewController {
    viewController.navBarHairlineImageView = [self findHairlineImageViewUnder:self.navigationBar];
    viewController.navBarHairlineImageView.hidden = YES;
}

- (void) hiddenHairlineImageViewUnderViewContro:(UIViewController *)viewController {
    viewController.navBarHairlineImageView = [self findHairlineImageViewUnder:self.navigationBar];
    viewController.navBarHairlineImageView.hidden = NO;
}


@end
