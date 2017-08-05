//
//  UIImage+SJImage.m
//  Pods
//
//  Created by SoulJa on 2017/8/5.
//
//

#import "UIImage+SJImage.h"

@implementation UIImage (SJImage)

#pragma makr - 圆角Image
- (UIImage *)sj_imageWithCornerRadius:(CGFloat)radius {
    CGRect rect = (CGRect){0.f, 0.f, self.size};
    
    UIGraphicsBeginImageContextWithOptions(self.size, NO, [UIScreen mainScreen].scale);
    CGContextAddPath(UIGraphicsGetCurrentContext(), [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius].CGPath);
    CGContextClip(UIGraphicsGetCurrentContext());
    
    [self drawInRect:rect];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //关闭图像画布
    UIGraphicsEndImageContext();
    
    return image;
}
@end
