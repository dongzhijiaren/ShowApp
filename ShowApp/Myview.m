//
//  Myview.m
//  ShowApp
//
//  Created by ZD on 15/5/26.
//  Copyright (c) 2015年 geek. All rights reserved.
//

#import "Myview.h"

@implementation Myview


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
//    UIColor *magentaColor =
//    [UIColor colorWithRed:0.5f
//                   green:0.0f
//                    blue:0.5f
//                   alpha:1.0f];
//    /* Set the color in the graphical context */
//    [magentaColor set];
//    /* Load the font */
//    UIFont *helveticaBold = [UIFont fontWithName:@"HelveticaNeue-Bold"size:30.0f];
//    /* Our string to be drawn */
//    NSString *myString =@"Hellow world";
//    /* Draw the string using the font. The color has
//     already been set */
//    [myString drawAtPoint:CGPointMake(25,190)withFont:helveticaBold];
    
    // Drawing code
    
    
    [self drawMyText];
    [self drawMyLine];
    
    [self drawrectangle];
    
}

-(void)drawrectangle{

    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //设置颜色，仅填充4条边
    CGContextSetStrokeColorWithColor(ctx, [[UIColor greenColor] CGColor]);
    //设置线宽为1
    CGContextSetLineWidth(ctx, 30.0);
    //设置长方形4个顶点
    CGPoint poins[] = {CGPointMake(40, 60),CGPointMake(120, 60),CGPointMake(120, 120),CGPointMake(40, 120)};
    CGContextAddLines(ctx,poins,4);
    CGContextClosePath(ctx);
    CGContextStrokePath(ctx);
}

- (void)drawMyText
{
    UIColor *magentaColor =
    [UIColor colorWithRed:0.5f
                   green:0.0f
                    blue:0.5f
                   alpha:1.0f];
    /* Set the color in the graphical context */
    [magentaColor set];
    /* Load the font */
    UIFont *helveticaBold = [UIFont fontWithName:@"HelveticaNeue-Bold"size:30.0f];
    /* Our string to be drawn */
    NSString *myString =@"Hellow world";
    /* Draw the string using the font. The color has
     already been set */
    [myString drawAtPoint:CGPointMake(25,190)withFont:helveticaBold];
}
- (void)drawMyLine
{
    //draw line
    CGContextRef context    =UIGraphicsGetCurrentContext();//获取画布
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);//线条颜色
    CGContextSetShouldAntialias(context,NO);//设置线条平滑，不需要两边像素宽
    CGContextSetLineWidth(context,1.0f);//设置线条宽度
    CGContextMoveToPoint(context,153,6); //线条起始点
    CGContextAddLineToPoint(context,153,145);//线条结束点
    CGContextStrokePath(context);//结束，也就是开始画
}




@end
