//
//  NSString+SJString.m
//  Pods
//
//  Created by SDPMobile on 2017/9/22.
//
//

#import "NSString+SJString.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSString (SJString)

#pragma mark - MD5加密, 32位 小写
+ (NSString *)sj_md5ForLowerBate:(NSString *)string {
    //要进行UTF8的转码
    const char* input = [string UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(input, (CC_LONG)strlen(input), result);
    
    NSMutableString *digest = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (NSInteger i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [digest appendFormat:@"%02x", result[i]];
    }
    
    return digest;
}

#pragma mark - MD5加密, 32位 大写
+ (NSString *)sj_md5ForUpperBate:(NSString *)string {
    //要进行UTF8的转码
    const char* input = [string UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(input, (CC_LONG)strlen(input), result);
    
    NSMutableString *digest = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (NSInteger i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [digest appendFormat:@"%02X", result[i]];
    }
    
    return digest;
}

#pragma mark - MD5加密, 16位 小写
+ (NSString *)sj_md5ForLower16Bate:(NSString *)string {
    NSString *md5Str = [self sj_md5ForLowerBate:string];
    
    NSString  *str;
    for (int i=0; i<24; i++) {
        str = [md5Str substringWithRange:NSMakeRange(8, 16)];
    }
    return str;
}

#pragma mark - MD5加密, 16位 大写
+ (NSString *)sj_md5ForUpper16Bate:(NSString *)string {
    NSString *md5Str = [self sj_md5ForUpperBate:string];
    
    NSString  *str;
    for (int i=0; i<24; i++) {
        str = [md5Str substringWithRange:NSMakeRange(8, 16)];
    }
    return str;
}
@end
