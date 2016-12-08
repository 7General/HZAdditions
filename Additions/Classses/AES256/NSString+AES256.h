//
//  NSString +AES256.h
//  GuoShui
//
//  Created by ysyc_liu on 16/1/14.
//  Copyright © 2016年 ysyc. All rights reserved.
//

#ifndef NSString__AES256_h
#define NSString__AES256_h

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>

#import "NSData+AES256.h"

@interface NSString(AES256)

-(NSString *) aes256_encrypt:(NSString *)key;
-(NSString *) aes256_decrypt:(NSString *)key;

@end

#endif /* NSString__AES256_h */
