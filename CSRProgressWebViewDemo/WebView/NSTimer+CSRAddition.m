//
//  NSTimer+CSRAddition.m
//  CSRProgressWebViewDemo
//
//  Created by student on 2017/7/1.
//  Copyright © 2017年 LeoAiolia. All rights reserved.
//

#import "NSTimer+CSRAddition.h"

@implementation NSTimer (CSRAddition)

- (void)pause {
    if (!self.isValid) return;
    [self setFireDate:[NSDate distantFuture]];
}

- (void)resume {
    if (!self.isValid) return;
    [self setFireDate:[NSDate date]];
}

- (void)resumeWithTimeInterval:(NSTimeInterval)time {
    if (!self.isValid) return;
    [self setFireDate:[NSDate dateWithTimeIntervalSinceNow:time]];
}

@end
