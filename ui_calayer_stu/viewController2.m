//
//  viewController2.m
//  ui_calayer_stu
//
//  Created by scuplt on 16-3-15.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "viewController2.h"
@interface viewController2()
@property (nonatomic,strong) CALayer *myLayer;
@end


@implementation viewController2

-(void)viewDidLoad{
    [super viewDidLoad];
    CALayer *layer=[CALayer layer];
    layer.position=CGPointMake(100, 100);
    layer.bounds=CGRectMake(0, 0, 100, 100);
    layer.backgroundColor=[UIColor redColor].CGColor;
    
    [self.view.layer addSublayer:layer];
    self.myLayer=layer;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    /* 平移动画  */
    //[ self testTransform];
    /* 旋转 动画  */
    [ self testRotate];
    
}

/* 旋转 动画  */
-(void)testRotate{
    CABasicAnimation *baseAni=[CABasicAnimation animation];//创建动画对象
    baseAni.keyPath=@"transform";//设置动画对象-->字符串 一定要写对,
    baseAni.toValue=[NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI, 1, 1, 0)];//动画 到哪里
    //  baseAni.keyPath=@"transform.rotation";//平面旋转-->字符串 一定要写对,
    //  baseAni.toValue=@(-M_PI);//动画 到哪里
    //  baseAni.keyPath=@"transform.scale";//平面缩放-->字符串 一定要写对,
    //  baseAni.toValue=@(1.5);//动画 到哪里  是@括号
    
    
    baseAni.duration=4;
    
    //写下面的两个属性,让其动画完毕后 不会反弹回去
    baseAni.removedOnCompletion=NO;
    baseAni.fillMode=kCAFillModeForwards;
    
    [self.myLayer addAnimation:baseAni forKey:nil];//添加动画
}


/* 平移动画  */
-(void)testTransform{//
    CABasicAnimation *baseAni=[CABasicAnimation animation];//创建动画对象
    baseAni.keyPath=@"position";//设置动画对象-->字符串 一定要写对,
    baseAni.toValue=[NSValue valueWithCGPoint:CGPointMake(200, 300)];//动画 到哪里
    // baseAni.byValue=[NSValue valueWithCGPoint:CGPointMake(200, 300)];//动画 增加多少
    // baseAni.fromValue=[NSValue valueWithCGPoint:CGPointMake(0, 0)];//从哪里 开始 动画 NSValue转化
    baseAni.duration=2;
    
    //写下面的两个属性,让其动画完毕后 不会反弹回去
    baseAni.removedOnCompletion=NO;
    baseAni.fillMode=kCAFillModeForwards;
    [self.myLayer addAnimation:baseAni forKey:nil];//添加动画
}

@end








