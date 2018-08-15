//
//  UIViewController+NavigationBar.m
//
//
//  Created by 王会洲 on 2018/8/15.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import "UIViewController+NavigationBar.h"
#import <objc/runtime.h>

static const void * OrderTagsBy = &OrderTagsBy;

@implementation UIViewController (NavigationBar)
@dynamic navBarHairlineImageView;

- (UIImageView *)navBarHairlineImageView {
    return objc_getAssociatedObject(self, OrderTagsBy);
}
- (void)setNavBarHairlineImageView:(UIImageView *)navBarHairlineImageView {
    objc_setAssociatedObject(self, OrderTagsBy, navBarHairlineImageView, OBJC_ASSOCIATION_COPY_NONATOMIC);
}


@end
