//
//  NSData+AES256.h
//  GuoShui
//
//  Created by ysyc_liu on 16/1/14.
//  Copyright © 2016年 ysyc. All rights reserved.
//

#ifndef NSData_AES256_h
#define NSData_AES256_h

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>

@interface NSData(AES256)
-(NSData *) aes256_encrypt:(NSString *)key;
-(NSData *) aes256_decrypt:(NSString *)key;
@end

#endif /* NSData_AES256_h */
