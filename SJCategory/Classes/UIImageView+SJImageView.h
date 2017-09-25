//
//  UIImageView+SJImageView.h
//  Pods
//
//  Created by SDPMobile on 2017/9/25.
//
//

#import <UIKit/UIKit.h>

@interface UIImageView (SJImageView)
/*
 *  带尖角的ImageView
 *  @param  imageView    图像视图
 *  @return  UIImageView
 */
+ (UIImageView *)sj_createSharpMaskView:(UIImageView *)imageView;
@end
