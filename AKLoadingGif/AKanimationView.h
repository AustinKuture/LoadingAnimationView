//
//  AKanimationView.h
//  AKLoadingGif
//
//  Created by 李亚坤 on 2017/1/22.
//  Copyright © 2017年 Kuture. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AKanimationView : UIView

+ (instancetype)sharedAKanimationView;
- (void)startAKanimationView;
- (void)stopAKanimationView;
- (UIImageView *)animationViewFram:(CGRect)fram ImageName:(NSString *)imageName ImageCount:(NSInteger)imageCount AnimationTime:(float)animationTime;




@end
