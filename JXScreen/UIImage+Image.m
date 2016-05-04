//
//  UIImage+Image.m
//  JXScreen
//
//  Created by yuezuo on 16/5/4.
//  Copyright © 2016年 yuezuo. All rights reserved.
//

#import "UIImage+Image.h"

@implementation UIImage (Image)
+ (UIImage *)imageWithCapeture:(UIView *)view {
    // 获取位图上下文
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, 0);
    
    // 获取上下文
    CGContextRef ctf = UIGraphicsGetCurrentContext();
    
    // 把图片的上下文渲染到layer上
    [view.layer renderInContext:ctf];
    
    // 获取到图片
    UIImage * imageNow = UIGraphicsGetImageFromCurrentImageContext();
    
    // 关闭图片上下文
    UIGraphicsEndImageContext();

    return imageNow;
}
@end
