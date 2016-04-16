

//
//  NSDate+Helper.m
//
//
//  Created by 王会洲 on 16/2/19.
//  Copyright © 2016年 王会洲. All rights reserved.
//
#import "NSDate+Helper.h"

@implementation NSDate (Helper)

+ (NSDate *)dateFromString:(NSString *)string withFormat:(NSString *)formatString
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatString];
    NSDate *date = [dateFormatter dateFromString:string];
    return date;
}

+ (NSString *)stringFromDate:(NSDate *)date withFormat:(NSString *)formatString
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatString];
    NSString *dateStr = [dateFormatter stringFromDate:date];
    return dateStr;
}

//add by cuizl  计算某一天到达现在的天数
+(NSInteger) daysFromDate:(NSDate*)fromDate toDate:(NSDate*)toDate
{
    NSCalendar* chineseClendar = [ [ NSCalendar alloc ] initWithCalendarIdentifier:NSGregorianCalendar ];
    
    NSUInteger unitFlags =NSDayCalendarUnit;
    
    NSDateComponents *cps = [chineseClendar components:unitFlags fromDate:fromDate toDate:toDate  options:0];
    
   //TT_RELEASE_SAFELY(chineseClendar);
    
    return [cps day];
}



+(NSString *) stringCompareCurrentTime:(NSString *) compareDate {
    //2016-01-08 00:00:00
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"]; //设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
    NSDate* date = [formatter dateFromString:compareDate]; //将字符串按formatter转成nsdate
    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[date timeIntervalSince1970]];
    long time = [timeSp integerValue];
    
    __autoreleasing NSString *_timestamp;
    NSTimeInterval now =  [[[NSDate alloc] init] timeIntervalSince1970];
    int distance = now - time;
    
    if (distance <= 5){
        static NSDateFormatter *dateFormatter = nil;
        if (dateFormatter == nil) {
            dateFormatter = [[NSDateFormatter alloc] init];
            [dateFormatter setDateStyle:NSDateFormatterShortStyle];
        }
        NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
        [dateFormatter setDateFormat:@"MM-dd HH:mm"];
        _timestamp = [dateFormatter stringFromDate:date];
        return _timestamp;
    }
    
    if (distance < 60) {
        _timestamp = [NSString stringWithFormat:@"%d%@", distance, @"秒前"];
    }
    else if (distance < 60 * 60) {
        distance = distance / 60;
        _timestamp = [NSString stringWithFormat:@"%d%@", distance, @"分钟前"];
    }
    else if (distance < 60 * 60 * 24) {
        distance = distance / 60 / 60;
        _timestamp = [NSString stringWithFormat:@"%d%@", distance, @"小时前"];
    }
    else if (distance < 60 * 60 * 24 * 30) {
        distance = distance / 60 / 60 / 24;
        _timestamp = [NSString stringWithFormat:@"%d%@", distance, @"天前"];
    }
    //    else if(distance < 60 * 60 * 24 * 30 * 12){
    //        distance = distance / 60 / 60 / 24 /30;
    //        _timestamp = [NSString stringWithFormat:@"%d%@", distance, @"月前"];
    //
    //    }
    else {
        static NSDateFormatter *dateFormatter = nil;
        if (dateFormatter == nil) {
            dateFormatter = [[NSDateFormatter alloc] init];
            [dateFormatter setDateStyle:NSDateFormatterShortStyle];
        }
        NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
        //[dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
        [dateFormatter setDateFormat:@"yyyy-MM-dd"];
        _timestamp = [dateFormatter stringFromDate:date];
    }
    return _timestamp;
}




@end
