//
//  myLayers.m
//  ui_calayer_stu
//
//  Created by scuplt on 16-3-15.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "myLayers.h"

@implementation myLayers
-(void)drawInContext:(CGContextRef)ctx{
    CGContextSetRGBFillColor(ctx, 1, 1, 0, 1);
    CGContextAddEllipseInRect(ctx, CGRectMake(0, 0, 50, 50));
    CGContextFillPath(ctx);    
}
@end
