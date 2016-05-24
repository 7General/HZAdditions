//
//  HZNSlog.h
//  Additions
//
//  Created by 王会洲 on 16/5/24.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#ifndef HZNSlog_h
#define HZNSlog_h

// 添加自定义log程序
#ifdef DEBUG
#define HZLog(...) NSLog(__VA_ARGS__)
#define debugMethod() HZLog(@"%s",__func__)
#else
#define NSLog(...)
#define debugMethod()
#endif

#endif /* HZNSlog_h */
