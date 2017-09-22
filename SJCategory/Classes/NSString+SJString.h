//
//  NSString+SJString.h
//  Pods
//
//  Created by SDPMobile on 2017/9/22.
//
//

#import <Foundation/Foundation.h>

@interface NSString (SJString)
/*
 *  MD5加密, 32位 小写
 *  @param  string    传入要加密的字符串
 *  @return  返回加密后的字符串
 */
+ (NSString *)sj_md5ForLowerBate:(NSString *)string;
/*
 *  MD5加密, 32位 大写
 *  @param  string    传入要加密的字符串
 *  @return  返回加密后的字符串
 */
+ (NSString *)sj_md5ForUpperBate:(NSString *)string;
/**
 *  MD5加密, 16位 小写
 *
 *  @param string 传入要加密的字符串
 *
 *  @return 返回加密后的字符串
 */
+(NSString *)sj_md5ForLower16Bate:(NSString *)string;
/**
 *  MD5加密, 16位 大写
 *
 *  @param string 传入要加密的字符串
 *
 *  @return 返回加密后的字符串
 */
+(NSString *)sj_md5ForUpper16Bate:(NSString *)string;
@end
