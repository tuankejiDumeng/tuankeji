//
//  UIImage+DM.h
//  Number One
//
//  Created by 杜蒙 on 15/3/26.
//  Copyright (c) 2015年 &#26460;&#33945;. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (DM)

/*
 * 传入一个颜色  返回一个图片的尺寸是 UIImageView的尺寸
 */
+ (UIImage *)imageWithColor:(UIColor *)color;




/**
 * 选中时候显示的显示原始的照片
 *
 *  @param nameIcon 图片的名字
 *
 *  @return 返回设置好的UIImage
 */
+(UIImage *)imagesViewNamesIcon:(NSString *)nameIcon;


/**
 *  能伸缩的image
 *
 *  @param imageName 图片的名字
 *
 *  @return 返回调整之后的iamge
 */
+(UIImage *)stretchableIconImage:(NSString *)imageName left:(CGFloat )left top:(CGFloat )top;



+(UIImage *)resizedImageIcon:(NSString *)iconName;




@end
