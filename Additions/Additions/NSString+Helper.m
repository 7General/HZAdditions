//
//  NSString+Helper.m
//  Additions
//
//  Created by 王会洲 on 16/5/24.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import "NSString+Helper.h"
#import "HZNSlog.h"

@implementation NSString (Helper)

/**
 *  时间戳转换--默认格式YYYY-MM-dd HH:mm:sss
 *
 *  @return 返回转换后的NSString
 */
-(NSString *)tranclTime{
    return [self TimeWithFormat:@"yyyy-MM-dd HH:mm:sss"];
}

/**
 *  时间戳转换---转换格式自定义
 *
 *  @param format 时间戳转换格式
 *
 *  @return 返回转换后的NSString
 */
-(NSString *)TimeWithFormat:(NSString *)format {
    NSTimeInterval time=[self doubleValue] ;//+ 28800;//因为时差问题要加8小时 == 28800 sec
    NSDate *detaildate=[NSDate dateWithTimeIntervalSince1970:time];
    NSLog(@"date:%@",[detaildate description]);
    //实例化一个NSDateFormatter对象
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //设定时间格式,这里可以设置成自己需要的格式
    [dateFormatter setDateFormat:format];
    
    return [dateFormatter stringFromDate: detaildate];
}






- (NSString *)CompareCurrentTime:(NSString *)Format {
    //2016-01-08 00:00:00
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"]; //设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
    NSDate* date = [formatter dateFromString:self]; //将字符串按formatter转成nsdate
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
    else if (distance < 60 * 60 * 24 * 7) {
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
        
        [dateFormatter setDateFormat:Format];
        _timestamp = [dateFormatter stringFromDate:date];
    }
    return _timestamp;
}



-(NSString *)DefaultCompareCurrentTime {
    return [self CompareCurrentTime:@"yyyy-MM-dd HH:mm:sss"];
}



@end
