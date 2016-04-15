//
//  NSString+NULL.h
//
//
//  Created by 王会洲 on 16/2/19.
//  Copyright © 2016年 王会洲. All rights reserved.
//
#import <Foundation/Foundation.h>


@interface NSString (NSStringNULL)

- (id)initWithUTF8NULLString:(const char *)nullTerminatedCString;

@end
