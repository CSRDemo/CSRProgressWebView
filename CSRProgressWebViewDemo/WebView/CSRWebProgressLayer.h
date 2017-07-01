//
//  CSRWebProgressLayer.h
//  CSRProgressWebViewDemo
//
//  Created by student on 2017/7/1.
//  Copyright © 2017年 LeoAiolia. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

@interface CSRWebProgressLayer : CAShapeLayer

- (void)finishedLoad;
- (void)startLoad;

- (void)closeTimer;


@end
