//
//  UIImageView+SJImageView.m
//  Pods
//
//  Created by SDPMobile on 2017/9/25.
//
//

#import "UIImageView+SJImageView.h"

/**  距离右边距离 **/
static CGFloat const kRightSpace = 10;

/**  距离顶点的距离 **/
static CGFloat const kTopSpace = 15;

@implementation UIImageView (SJImageView)

#pragma mark - 带尖角的ImageView
+ (UIImageView *)sj_createSharpMaskView:(UIImageView *)imageView {
    // 获取图片视图的宽高
    CGFloat viewWidth = imageView.frame.size.width;
    CGFloat viewHeight = imageView.frame.size.height;
    
    // 创建shapeLayer
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    
    // 创建Path
    UIBezierPath *path = [UIBezierPath bezierPath];
    CGPoint point1 = CGPointMake(0, 0);
    CGPoint point2 = CGPointMake(viewWidth - kRightSpace, 0);
    CGPoint point3 = CGPointMake(viewWidth - kRightSpace, kTopSpace);
    CGPoint point4 = CGPointMake(viewWidth, kTopSpace);
    CGPoint point5 = CGPointMake(viewWidth - kRightSpace, kTopSpace + 10);
    CGPoint point6 = CGPointMake(viewWidth - kRightSpace, viewHeight);
    CGPoint point7 = CGPointMake(0, viewHeight);
    
    [path moveToPoint:point1];
    [path addLineToPoint:point2];
    [path addLineToPoint:point3];
    [path addLineToPoint:point4];
    [path addLineToPoint:point5];
    [path addLineToPoint:point6];
    [path addLineToPoint:point7];
    
    [path closePath];
    
    shapeLayer.path = path.CGPath;
    
    // 设置MaskLayer
    imageView.layer.mask = shapeLayer;
    
    return imageView;
}
@end
