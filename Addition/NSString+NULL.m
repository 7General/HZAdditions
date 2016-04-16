//
//  NSString+NULL.m
//
//
//  Created by 王会洲 on 16/2/19.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import "NSString+NULL.h"


@implementation NSString (NSStringNULL)
- (id)initWithUTF8NULLString:(const char *)nullTerminatedCString{
 
	if(nullTerminatedCString==NULL)
		return nil;
	else{
		return [self initWithUTF8String:nullTerminatedCString];
	}
	
}
@end
