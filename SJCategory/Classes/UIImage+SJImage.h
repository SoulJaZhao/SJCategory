//
//  UIImage+SJImage.h
//  Pods
//
//  Created by SoulJa on 2017/8/5.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (SJImage)
/**
 *  圆角Image
 *  @param  radius  弧度
 *  @return UIImage 带圆角的图片
 */
- (UIImage *)sj_imageWithCornerRadius:(CGFloat)radius;
@end
