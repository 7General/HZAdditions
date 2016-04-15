

#import <Foundation/Foundation.h>

@interface NSDate (Helper)

/*tools*/

+ (NSDate *)dateFromString:(NSString *)string withFormat:(NSString *)formatString;

+ (NSString *)stringFromDate:(NSDate *)date withFormat:(NSString *)formatString;

//add by cuizl  计算某一天到达现在的天数
+(NSInteger) daysFromDate:(NSDate*)fromDate toDate:(NSDate*)toDate;

@end
