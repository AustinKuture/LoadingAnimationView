//
//  ViewController.m
//  AKLoadingGif
//
//  Created by 李亚坤 on 2017/1/22.
//  Copyright © 2017年 Kuture. All rights reserved.
//

#import "ViewController.h"
#import "AKanimationView.h"

@interface ViewController ()

@property (nonatomic,strong) UIImageView *imageV;
@property (nonatomic,strong) AKanimationView *akV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *startA = [[UIButton alloc]initWithFrame:CGRectMake(200, 100, 100, 50)];
    [startA setTitle:@"Start" forState:UIControlStateNormal];
    [startA setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [startA addTarget:self action:@selector(startActionView) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *stopA = [[UIButton alloc]initWithFrame:CGRectMake(50, 100, 100, 50)];
    [stopA setTitle:@"Stop" forState:UIControlStateNormal];
    [stopA setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [stopA addTarget:self action:@selector(stopActionView) forControlEvents:UIControlEventTouchUpInside];
    
    _akV = [AKanimationView sharedAKanimationView];
    
    [self.view addSubview:startA];
    [self.view addSubview:stopA];
   
}


- (void)stopActionView{
    
    [_akV stopAKanimationView];
}

- (void)startActionView{
    
    [_akV startAKanimationView];
}

- (void)viewWillAppear:(BOOL)animated{
    
    _imageV = [_akV animationViewFram:CGRectMake(200, 200, 50, 44) ImageName:@"timg_" ImageCount:24 AnimationTime:0.5];
    [_akV startAKanimationView];
    [self.view addSubview:_imageV];
}














@end
