//
//  AKanimationView.m
//  AKLoadingGif
//
//  Created by 李亚坤 on 2017/1/22.
//  Copyright © 2017年 Kuture. All rights reserved.
//

#import "AKanimationView.h"

@interface AKanimationView ()

@property (nonatomic,strong) UIImageView *imageV;

@end
@implementation AKanimationView

+ (instancetype)sharedAKanimationView{
    
    static dispatch_once_t once = 0;
    static AKanimationView *animation = nil;
    dispatch_once(&once, ^{
        
        animation = [[AKanimationView alloc]init];
    });
    
    return animation;
}

- (UIImageView *)animationViewFram:(CGRect)fram ImageName:(NSString *)imageName ImageCount:(NSInteger)imageCount AnimationTime:(float)animationTime{
    
    _imageV = [[UIImageView alloc]initWithFrame:fram];
    NSMutableArray *imagArray = [NSMutableArray array];
    
    for (int i = 1;i<=imageCount;i++){
        
        [imagArray addObject:[UIImage imageNamed:[NSString stringWithFormat:@"%@%d",imageName,i]]];
    }
    
    [_imageV setAnimationImages:imagArray];
    [_imageV setAnimationRepeatCount:99999];
    [_imageV setAnimationDuration:animationTime];
    
    return _imageV;
    
}

- (void)startAKanimationView{
    
    [_imageV startAnimating];
}

- (void)stopAKanimationView{
    
    [_imageV stopAnimating];
}




@end
