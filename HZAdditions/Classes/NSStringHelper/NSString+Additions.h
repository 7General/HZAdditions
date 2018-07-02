
//
//  NSString+Additions.h
//
//
//  Created by 王会洲 on 16/2/19.
//  Copyright © 2016年 王会洲. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "HZAdditionsCont.h"




/**
 * Doxygen does not handle categories very well, so please refer to the .m file in general
 * for the documentation that is reflected on api.three20.info.
 */
@interface NSString (Additions)


/**
 *  获取用户手机UUID
 */
+ (NSString *)generateGuid;
/**
 * Determines if the string contains only whitespace and newlines.
 */
- (BOOL)isWhitespaceAndNewlines;





/**
 * 判断是否为空
 * Determines if the string is empty or contains only whitespace.
 */
- (BOOL)isEmptyOrWhitespace; 

/**
 * 转换文字中特俗字符
 * Parses a URL, adds query parameters to its query, and re-encodes it as a new URL.
 */
- (NSString*)stringByAddingQueryDictionary:(NSDictionary*)query;

/**
 * Compares two strings expressing software versions.
 *
 * The comparison is (except for the development version provisions noted below) lexicographic
 * string comparison. So as long as the strings being compared use consistent version formats,
 * a variety of schemes are supported. For example "3.02" < "3.03" and "3.0.2" < "3.0.3". If you
 * mix such schemes, like trying to compare "3.02" and "3.0.3", the result may not be what you
 * expect.
 *
 * Development versions are also supported by adding an "a" character and more version info after
 * it. For example "3.0a1" or "3.01a4". The way these are handled is as follows: if the parts
 * before the "a" are different, the parts after the "a" are ignored. If the parts before the "a"
 * are identical, the result of the comparison is the result of NUMERICALLY comparing the parts
 * after the "a". If the part after the "a" is empty, it is treated as if it were "0". If one
 * string has an "a" and the other does not (e.g. "3.0" and "3.0a1") the one without the "a"
 * is newer.
 *
 * Examples (?? means undefined):
 *   "3.0" = "3.0"
 *   "3.0a2" = "3.0a2"
 *   "3.0" > "2.5"
 *   "3.1" > "3.0"
 *   "3.0a1" < "3.0"
 *   "3.0a1" < "3.0a4"
 *   "3.0a2" < "3.0a19"  <-- numeric, not lexicographic
 *   "3.0a" < "3.0a1"
 *   "3.02" < "3.03"
 *   "3.0.2" < "3.0.3"
 *   "3.00" ?? "3.0"
 *   "3.02" ?? "3.0.3"
 *   "3.02" ?? "3.0.2"
 */
- (NSComparisonResult)versionStringCompare:(NSString *)other;


/**
 *  计算文字高度
 *
 *  @param Font  字体
 *  @param width 文字区域宽度
 *
 *  @return 字体SIze
 */
- (CGSize)heightWithFont:(UIFont * )Font width:(CGFloat) width HZAddititonsDeprecated("使用HeightParagraphSpeace: withFont: AndWidth:");



/**
 * MD5 加密处理
 * Calculate the md5 hash of this string using CC_MD5.
 *
 * @return md5 hash of this string
 */
@property (nonatomic, readonly) NSString* md5Hash;

/**
 *  替换文本中的空格
 *
 *  @param replaceString 替换文本
 *
 *  @return <#return value description#>
 */
- (NSString *)replacedWhiteSpacsByString:(NSString *)replaceString;

/**
 *  对URL地址进行 Encode 才能继续访问
 *
 *  @return <#return value description#>
 */
- (NSString *)URLEvalutionEncoding;

/**
 *  重新组装字典 编辑urlget请求
 *
 *  @param dict <#dict description#>
 *
 *  @return <#return value description#>
 */
- (NSString *)queryStringNoEncodeFromDictionary:(NSDictionary *)dict;

/**
 *  转换字符
 *
 *  @return <#return value description#>
 */
- (NSString *)passport;

- (NSString *)URLEncoding;
- (NSString *)URLDecoding;

@end
