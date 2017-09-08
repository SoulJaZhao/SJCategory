//
//  UIColor+SJColor.h
//  Pods
//
//  Created by SDPMobile on 2017/9/8.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (SJColor)
/*
 *  16进制颜色转换为RGB
 *  @param  hexString    16进制字符串
 */
+ (UIColor *)sj_colorWithHexString:(NSString *)hexString;
@end
