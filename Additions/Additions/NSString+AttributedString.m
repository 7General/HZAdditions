//
//  NSString+AttributedString.m
//  Additions
//
//  Created by 王会洲 on 16/7/18.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import "NSString+AttributedString.h"

@implementation NSString (AttributedString)





/********************************************************************
 *  设置段落样式
 *  lineSpacing 行高
 *  textcolor      字体颜色
 *  font              字体
 *
 *  返回富文本字体
 *******************************************************************/
-(NSAttributedString *)stringWithParagraphlineSpeace:(CGFloat)lineSpacing
                                           textColor:(UIColor *)textcolor
                                            textFont:(UIFont *)font
{
    return [self stringWithParagraphlineSpeace:lineSpacing textColor:textcolor textFont:font compated:nil];
}



/********************************************************************
 *  返回包含关键字的富文本编辑
 *
 *  @param lineSpacing 行高
 *  @param textcolor   字体颜色
 *  @param font        字体
 *  @param KeyColor    关键字字体颜色
 *  @param KeyFont     关键字字体
 *  @param KeyWords    关键字数组
 *
 *  @return
 *******************************************************************/
-(NSAttributedString *)stringWithParagraphlineSpeace:(CGFloat)lineSpacing
                                           textColor:(UIColor *)textcolor
                                            textFont:(UIFont *)font
                                    withKeyTextColor:(UIColor *)KeyColor
                                             keyFont:(UIFont *)KeyFont
                                            keyWords:(NSArray *)KeyWords {
    NSAttributedString * AttributeString = [self stringWithParagraphlineSpeace:lineSpacing textColor:textcolor textFont:font compated:^(NSMutableAttributedString *attriStr) {
        NSDictionary * KeyattriBute = @{NSForegroundColorAttributeName:KeyColor,NSFontAttributeName:KeyFont};
        for (NSString * item in KeyWords) {
            NSRange  range = [self rangeOfString:item options:(NSCaseInsensitiveSearch)];
            [attriStr addAttributes:KeyattriBute range:range];
        }
    }];
    return AttributeString;
}


-(NSAttributedString *)stringWithParagraphlineSpeace:(CGFloat)lineSpacing
                                   NormalAttributeFC:(NSDictionary *)NormalFC
                                    withKeyTextColor:(NSArray *)KeyWords
                                      KeyAttributeFC:(NSDictionary *)keyFC {
    NSAttributedString * AttributeString = [self stringWithParagraphlineSpeace:lineSpacing attributeFC:NormalFC compated:^(NSMutableAttributedString *attriStr) {
        
        for (NSString * item in KeyWords) {
            NSRange  range = [self rangeOfString:item options:(NSCaseInsensitiveSearch)];
            [attriStr addAttributes:keyFC range:range];
        }
    }];
    return AttributeString;
}





/********************************************************************
 *  基本校验方法
 *
 *  @param lineSpacing 行高
 *  @param textcolor   字体颜色
 *  @param font        字体
 *  @param KeyColor    关键字字体颜色
 *  @param KeyFont     关键字字体
 *  @param KeyWords    关键字字符数组
 *
 *  @return <#return value description#>
 ********************************************************************/
-(NSAttributedString *)stringWithParagraphlineSpeace:(CGFloat)lineSpacing
                                           textColor:(UIColor *)textcolor
                                            textFont:(UIFont *)font
                                            compated:(void(^)(NSMutableAttributedString * attriStr))compalted {
    // 设置段落
    NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = lineSpacing;
    // NSKernAttributeName字体间距
    NSDictionary *attributes = @{ NSParagraphStyleAttributeName:paragraphStyle,NSKernAttributeName:@1.5f};
    NSMutableAttributedString * attriStr = [[NSMutableAttributedString alloc] initWithString:self attributes:attributes];
    // 创建文字属性
    NSDictionary * attriBute = @{NSForegroundColorAttributeName:textcolor,NSFontAttributeName:font};
    [attriStr addAttributes:attriBute range:NSMakeRange(0, self.length)];
    if (compalted) {
        compalted(attriStr);
    }
    return attriStr;
}

-(NSAttributedString *)stringWithParagraphlineSpeace:(CGFloat)lineSpacing
                                         attributeFC:(NSDictionary *)attributeFC
                                            compated:(void(^)(NSMutableAttributedString * attriStr))compalted {
    // 设置段落
    NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = lineSpacing;
    // NSKernAttributeName字体间距
    NSDictionary *attributes = @{ NSParagraphStyleAttributeName:paragraphStyle,NSKernAttributeName:@.5f};
    NSMutableAttributedString * attriStr = [[NSMutableAttributedString alloc] initWithString:self attributes:attributes];
    // 创建文字属性
    //NSDictionary * attriBute = @{NSForegroundColorAttributeName:textcolor,NSFontAttributeName:font};
    
    [attriStr addAttributes:attributeFC range:NSMakeRange(0, self.length)];
    if (compalted) {
        compalted(attriStr);
    }
    return attriStr;
}











/********************************************************************
 *  计算富文本字体高度
 *
 *  lineSpeace 行高
 *  param font              字体
 *  param width            字体所占宽度
 *
 *  @return 富文本高度
 ********************************************************************/
-(CGFloat)HeightParagraphSpeace:(CGFloat)lineSpeace withFont:(UIFont*)font AndWidth:(CGFloat)width {
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    /** 行高 */
    paraStyle.lineSpacing = lineSpeace;
    // NSKernAttributeName字体间距
    NSDictionary *dic = @{NSFontAttributeName:font, NSParagraphStyleAttributeName:paraStyle, NSKernAttributeName:@1.5f };
    CGSize size = [self boundingRectWithSize:CGSizeMake(width,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    return size.height;
}



@end
