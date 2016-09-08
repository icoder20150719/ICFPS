//
//  UIApplication+Memory.h
//  Coffee
//
//  Created by xiongan on 16/8/10.
//  Copyright © 2016年 承道科技. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (Memory)
@property (nonatomic, readonly) int64_t memoryUsed;
@end
