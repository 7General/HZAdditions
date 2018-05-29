//
//  HZAdditionsCont.h
//  Additions
//
//  Created by 王会洲 on 16/7/18.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import <UIKit/UIKit.h>


// 过期提醒
#define HZAddititonsDeprecated(instead) NS_DEPRECATED(1_0, 1_0, 2_0, 2_0, instead)

#define NotNilAndNull(_ref)  (((_ref) != nil) && (![(_ref) isEqual:[NSNull null]]))
#define IsNilOrNull(_ref)   (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]))

// 字符串是否为空
#define IsStrEmpty(_ref)    (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) ||([(_ref)isEqualToString:@""]))
// 数组是否为空
#define IsArrEmpty(_ref)    (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) ||([(_ref) count] == 0))

// 字符转换UTF8格式
#define OC(str) [NSString stringWithCString:(str) encoding:NSUTF8StringEncoding]
