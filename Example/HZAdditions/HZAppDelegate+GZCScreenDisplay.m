//
//  HZAppDelegate+GZCScreenDisplay.m
//  HZAdditions_Example
//
//  Created by zzg on 2019/4/23.
//  Copyright © 2019 wanghuizhou21@163.com. All rights reserved.
//

#import "HZAppDelegate+GZCScreenDisplay.h"
#import <objc/runtime.h>

const char *KEY_DISPLAY_TYPE = "displayType";

@interface UIResponder()

@property (nonatomic, assign) GZCScreenDisplayType displayType;

@end


@implementation HZAppDelegate (GZCScreenDisplay)


- (void)setDisplayType:(GZCScreenDisplayType)displayType{
    objc_setAssociatedObject(self, KEY_DISPLAY_TYPE, @(displayType), OBJC_ASSOCIATION_ASSIGN);
}

- (GZCScreenDisplayType)displayType{
    return [objc_getAssociatedObject(self, KEY_DISPLAY_TYPE) integerValue];
}

- (void)switchNewOrientation:(GZCScreenDisplayType)screenDisplayType view:(UIView *)currentView{
    self.displayType = screenDisplayType;
    [self application:[UIApplication sharedApplication] supportedInterfaceOrientationsForWindow:currentView.window];
}

- (void)forceInterfaceOrientation:(UIInterfaceOrientation)orientation {
    NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
    
    NSNumber *orientationTarget = [NSNumber numberWithInt:orientation];
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}


- (UIInterfaceOrientationMask)application:(UIApplication*)application supportedInterfaceOrientationsForWindow:(nullable UIWindow*)window{
    if (self.displayType == GZCScreenDisplayTypePortrait) {
        return UIInterfaceOrientationMaskPortrait;
    }else if (self.displayType == GZCScreenDisplayTypeRight) {
        return UIInterfaceOrientationMaskLandscapeRight;
    }
    else if (self.displayType == GZCScreenDisplayTypePortraitAndLeftAndRight){
        return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight;
    }
    return UIInterfaceOrientationMaskPortrait;
}


@end
