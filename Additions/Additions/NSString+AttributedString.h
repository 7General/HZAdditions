//
//  NSString+AttributedString.h
//  Additions
//
//  Created by 王会洲 on 16/7/18.
//  Copyright © 2016年 王会洲. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "HZAdditionsCont.h"

@interface NSString (AttributedString)
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
                                            textFont:(UIFont *)font ;




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
 ********************************************************************/
-(NSAttributedString *)stringWithParagraphlineSpeace:(CGFloat)lineSpacing
                                           textColor:(UIColor *)textcolor
                                            textFont:(UIFont *)font
                            withKeyTextColor:(UIColor *)KeyColor
                                             keyFont:(UIFont *)KeyFont
                                            keyWords:(NSArray *)KeyWords HZAddititonsDeprecated("使用stringWithParagraphlineSpeace: NormalAttributeFC: withKeyTextColor:KeyAttributeFC:");

/********************************************************************
 *  返回包含关键字的富文本编辑
 *
 *  @param lineSpacing 行高
 *  @param NormalAttributeFC   普通文字的属性字典
 *  @param withKeyTextColor    关键字数组
 *  @param KeyAttributeFC        关键字的属性字典
 *
 *  @return
 ********************************************************************/
-(NSAttributedString *)stringWithParagraphlineSpeace:(CGFloat)lineSpacing
                                   NormalAttributeFC:(NSDictionary *)NormalFC
                                    withKeyTextColor:(NSArray *)KeyWords
                                      KeyAttributeFC:(NSDictionary *)keyFC ;



/********************************************************************
 *  计算富文本字体高度
 *
 *  lineSpeace 行高
 *  param font              字体
 *  param width            字体所占宽度
 *
 *  @return 富文本高度
 ********************************************************************/
-(CGFloat)HeightParagraphSpeace:(CGFloat)lineSpeace withFont:(UIFont*)font AndWidth:(CGFloat)width;






@end
