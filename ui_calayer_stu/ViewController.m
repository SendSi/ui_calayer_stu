//
//  ViewController.m
//  ui_calayer_stu
//
//  Created by scuplt on 16-3-14.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "ViewController.h"
#import "myLayers.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) IBOutlet UIImageView *myPic;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //UIView
    self.myView.layer.borderWidth=10;//边框大小
    self.myView.layer.borderColor=[UIColor redColor].CGColor;//边框颜色
    self.myView.layer.cornerRadius=10;//圆角
    self.myView.layer.shadowOpacity=0.8;//透明度
    self.myView.layer.shadowOffset=CGSizeMake(5, 5);//阴影
    self.myView.layer.masksToBounds=YES;//超出剪掉
    
    //uiimageview
    self.myPic.layer.borderColor=[UIColor blueColor].CGColor;
    self.myPic.layer.borderWidth=10;
    self.myPic.layer.cornerRadius=10;//圆角
    self.myPic.layer.masksToBounds=YES;
    
    //self.myPic.layer.transform=CATransform3DMakeRotation(M_PI_4, 1, 1, 1);//三维旋转
    //NSValue *va=[NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI_4, 0, 5, 1)];
   // [self.myPic.layer setValue:va forKey:@"transform"];//旋转
    [self.myPic.layer setValue:@(M_PI_4) forKey:@"transform.rotation"];
   
    //新建图层
    CALayer *lay=[CALayer layer];
    lay.backgroundColor=[UIColor redColor].CGColor;
    lay.bounds=CGRectMake(10, 10, 100, 100);
    lay.position=CGPointMake(200, 100);
    lay.masksToBounds=YES;
    lay.cornerRadius=10;
    lay.contents=(id)[UIImage imageNamed:@"me"].CGImage;
    [self.view.layer addSublayer:lay];
    
    //图层
    myLayers *lays=[myLayers layer];
    lays.backgroundColor=[UIColor blueColor].CGColor;
    lays.bounds=CGRectMake(0, 0, 100, 100);
    lays.anchorPoint=CGPointZero;
    [lays setNeedsDisplay ];//这样才能调用 lays里的圆
    [self.view.layer addSublayer:lays];
}

@end










