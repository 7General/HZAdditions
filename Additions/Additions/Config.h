//
//  Config.h
//  Additions
//
//  Created by 王会洲 on 16/4/11.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#ifndef Config_h
#define Config_h

// 释放定时器
#undef TT_INVALIDATE_TIMER
#define TT_INVALIDATE_TIMER(__TIMER) \
{\
[__TIMER invalidate];\
__TIMER = nil;\
}



// 是否为空或是[NSNull null]
#define NotNilAndNull(_ref)  (((_ref) != nil) && (![(_ref) isEqual:[NSNull null]]))
#define IsNilOrNull(_ref)   (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]))

// 字符串是否为空
#define IsStrEmpty(_ref)    (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) ||([(_ref)isEqualToString:@""]))
// 数组是否为空
#define IsArrEmpty(_ref)    (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) ||([(_ref) count] == 0))

// 字符转换UTF8格式
#define OC(str) [NSString stringWithCString:(str) encoding:NSUTF8StringEncoding]


#endif /* Config_h */
