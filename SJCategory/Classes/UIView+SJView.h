//
//  UIView+SJView.h
//  Pods
//
//  Created by SoulJa on 2017/9/24.
//
//

#import <UIKit/UIKit.h>

@interface UIView (SJView)
/*
 *  创建带突出尖角的View
 */
+ (UIView *)sj_createSharpMaskView:(UIView *)view;
@end
