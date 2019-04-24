//
//  HZAppDelegate+GZCScreenDisplay.h
//  HZAdditions_Example
//
//  Created by zzg on 2019/4/23.
//  Copyright © 2019 wanghuizhou21@163.com. All rights reserved.
//

#import "HZAppDelegate.h"

NS_ASSUME_NONNULL_BEGIN


typedef NS_ENUM(NSInteger, GZCScreenDisplayType) {
    GZCScreenDisplayTypePortrait,
    GZCScreenDisplayTypeRight,
    GZCScreenDisplayTypePortraitAndLeftAndRight,
};


@interface HZAppDelegate (GZCScreenDisplay)<UIApplicationDelegate>

/**
 强制屏幕方式
 */
- (void)forceInterfaceOrientation:(UIInterfaceOrientation)orientation;
/**
 切换可旋转的方向
 */
- (void)switchNewOrientation:(GZCScreenDisplayType)screenDisplayType view:(UIView *)currentView;


@end

NS_ASSUME_NONNULL_END
