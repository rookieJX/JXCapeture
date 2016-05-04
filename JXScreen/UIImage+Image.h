//
//  UIImage+Image.h
//  JXScreen
//
//  Created by yuezuo on 16/5/4.
//  Copyright © 2016年 yuezuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Image)

/**
 *  截屏
 *
 *  @param view 屏幕的view
 *
 *  @return 返回一张图片
 */
+ (UIImage *)imageWithCapeture:(UIView *)view;
@end
