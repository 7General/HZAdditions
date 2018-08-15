//
//  UIViewController+NavigationBar.m
//  autorelease pool
//
//  Created by zzg on 2018/8/15.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import "UIViewController+NavigationBar.h"
#import <objc/runtime.h>

@implementation UIViewController (NavigationBar)

- (UIImageView *)navBarHairlineImageView {
    return objc_getAssociatedObject(self, @selector(navBarHairlineImageView));
}
- (void)setNavBarHairlineImageView:(UIImageView *)navBarHairlineImageView {
    objc_setAssociatedObject(self, @selector(navBarHairlineImageView), navBarHairlineImageView, OBJC_ASSOCIATION_COPY_NONATOMIC);
}


@end
