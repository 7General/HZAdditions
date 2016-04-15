
//
//  NSDate+Helper.h
//
//
//  Created by 王会洲 on 16/2/19.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Helper)

/*tools*/

+ (NSDate *)dateFromString:(NSString *)string withFormat:(NSString *)formatString;

+ (NSString *)stringFromDate:(NSDate *)date withFormat:(NSString *)formatString;

//add by cuizl  计算某一天到达现在的天数
+(NSInteger) daysFromDate:(NSDate*)fromDate toDate:(NSDate*)toDate;



/**
 *  比较当前时间和指定时间
 */
+(NSString *) stringCompareCurrentTime:(NSString *) compareDate;


@end
