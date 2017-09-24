//
//  UIView+SJView.m
//  Pods
//
//  Created by SoulJa on 2017/9/24.
//
//

#import "UIView+SJView.h"
/** 右边距离 **/
static CGFloat const kRightSpace = 10;
/** 顶部距离 **/
static CGFloat const kTopSpace = 15;

@implementation UIView (SJView)

#pragma mark - 创建带突出标志的View
+ (UIView *)sj_createSharpMaskView:(UIView *)view {
    // View的尺寸
    CGFloat viewWidth = view.frame.size.width;
    CGFloat viewHeight = view.frame.size.height;
    
    // 绘制路径点
    CGPoint point1 = CGPointMake(0, 0);
    CGPoint point2 = CGPointMake(viewWidth - kRightSpace, 0);
    CGPoint point3 = CGPointMake(viewWidth - kRightSpace, kTopSpace);
    CGPoint point4 = CGPointMake(viewWidth, kTopSpace);
    CGPoint point5 = CGPointMake(viewWidth - kRightSpace, kTopSpace + 10);
    CGPoint point6 = CGPointMake(viewWidth - kRightSpace, viewHeight);
    CGPoint point7 = CGPointMake(0, viewHeight);
    
    // 构建Layer
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    
    // 构建Path
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:point1];
    [path addLineToPoint:point2];
    [path addLineToPoint:point3];
    [path addLineToPoint:point4];
    [path addLineToPoint:point5];
    [path addLineToPoint:point6];
    [path addLineToPoint:point7];
    [path closePath];
    
    shapeLayer.path = path.CGPath;
    
    view.layer.mask = shapeLayer;
    
    return view;
}
@end
