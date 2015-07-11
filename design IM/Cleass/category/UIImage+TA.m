//
//  UIImage+DM.m
//  Number One
//
//  Created by 杜蒙 on 15/3/26.
//  Copyright (c) 2015年 &#26460;&#33945;. All rights reserved.
//

#import "UIImage+DM.h"

@implementation UIImage (DM)
+ (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
/**
 *  显示原始的图片的样子
 *
 *  @param nameIco 图片的名字
 *
 *  @return 返回设置好的Image
 */
+(UIImage *)imagesViewNamesIcon:(NSString *)nameIcon{
   
        UIImage *image=[[UIImage imageNamed:nameIcon] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        if (image==nil) {
            image=[UIImage imageNamed:nameIcon];
        }
        return image;
    return [UIImage imageNamed:nameIcon];
}


//返回一个调整大小之后的图片
+(UIImage *)stretchableIconImage:(NSString *)imageName left:(CGFloat)left top:(CGFloat)top{
    
    
    UIImage *image=[[UIImage imageNamed:imageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    return [image stretchableImageWithLeftCapWidth:image.size.width * left   topCapHeight:image.size.height *  top ];
    
}


+(UIImage *)resizedImageIcon:(NSString *)iconName{
    
    
    UIImage *image=[UIImage stretchableIconImage:iconName left:0.01 top:0.7];
    return image;
    
    
}
@end
