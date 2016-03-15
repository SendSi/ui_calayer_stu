//
//  viewController3.m
//  ui_calayer_stu
//
//  Created by scuplt on 16-3-15.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "viewController3.h"
@interface viewController3()
@property (weak, nonatomic) IBOutlet UIView *myView;

@end


@implementation viewController3

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    CAKeyframeAnimation *anim=[CAKeyframeAnimation animation];
    anim.keyPath=@"position";
    NSValue *v1=[NSValue valueWithCGPoint:CGPointZero];
      NSValue *v2=[NSValue valueWithCGPoint:CGPointMake(100, 0)];
      NSValue *v3=[NSValue valueWithCGPoint:CGPointMake(100, 200)];
      NSValue *v4=[NSValue valueWithCGPoint:CGPointMake(0,200)];
    anim.values=@[v1,v2,v3,v4];
    anim.duration=2.3;
    anim.removedOnCompletion=NO;
    anim.fillMode=kCAFillModeForwards;
    [self.myView.layer addAnimation:anim forKey:nil];
}

@end
