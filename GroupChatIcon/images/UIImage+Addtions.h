//
//  UIImage+Addtions.h
//
//  Created by Admin on 15/07/18.
//  Copyright © 2015年 Ad. All rights reserved.

#import <UIKit/UIKit.h>

@interface UIImage (Addtions)

+ (UIImage *)groupIconWith:(NSArray *)array bgColor:(UIColor *)bgColor;
+ (UIImage *)groupIconWithURLArray:(NSArray *)URLArray bgColor:(UIColor *)bgColor;

@end
