

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
    NSCalendar* chineseClendar = [ [ NSCalendar alloc ] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSUInteger unitFlags =NSCalendarUnitDay;
    NSDateComponents *cps = [chineseClendar components:unitFlags fromDate:fromDate toDate:toDate  options:0];
    
    return [cps day];
}


-(NSString *)stringFromDate:(NSString *)format{
    NSDateFormatter *Formatter = [[NSDateFormatter alloc] init];
    [Formatter setDateFormat:format];
    return  [Formatter stringFromDate:self];
}




@end
