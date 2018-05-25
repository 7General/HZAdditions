//
//  NSString+Helper.h
//  Additions
//
//  Created by 王会洲 on 16/5/24.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Helper)


/**
 *  时间戳转换--默认格式YYYY-MM-dd HH:mm:sss
 *
 *  @return 返回转换后的NSString
 */
- (NSString *)tranclTime;

/**
 *  时间戳转换---转换格式自定义
 *
 *  @param format 时间戳格式
 *
 *  @return 返回转换后的NSString
 */
- (NSString *)tranclTimeWithFormat:(NSString *)format;

/**
 *  与当前事件比较获取事件间隔.
 *
 *  @param format 转化后的时间格式.
 *
 *  @return .
 */
- (NSString *)CompareCurrentTime:(NSString *)format;

/**
 *  与当前事件比较获取事件间隔.
 *
 *  转化后的时间格式yyyy-MM-dd HH:mm:sss
 *
 *  @return .
 */
-(NSString *)DefaultCompareCurrentTime;


@end
