//
//  ViewController.m
//  JXScreen
//
//  Created by yuezuo on 16/5/4.
//  Copyright © 2016年 yuezuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
/** tupian  */
@property (nonatomic,strong) UIImage * imageV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    // 获取位图上下文
    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, NO, 0);
    
    // 获取上下文
    CGContextRef ctf = UIGraphicsGetCurrentContext();
    
    // 把图片的上下文渲染到layer上
    [self.view.layer renderInContext:ctf];
    
    // 获取到图片
    UIImage * imageNow = UIGraphicsGetImageFromCurrentImageContext();
    
    // 关闭图片上下文
    UIGraphicsEndImageContext();
    
    // 将图片转换成二进制保存
    NSData * data = UIImagePNGRepresentation(imageNow);
    [data writeToFile:@"/Users/yuezuo/Desktop/image.png" atomically:YES];
    self.imageView.hidden = NO;
    self.imageView.image = imageNow;
}

@end
