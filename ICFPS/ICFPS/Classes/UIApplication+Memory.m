//
//  UIApplication+Memory.m
//  Coffee
//
//  Created by xiongan on 16/8/10.
//  Copyright © 2016年 承道科技. All rights reserved.
//

#import "UIApplication+Memory.h"
#include <mach/mach.h>
#include <arpa/inet.h>

@implementation UIApplication (Memory)
- (int64_t)memoryUsed {
    task_basic_info_data_t taskInfo;
    mach_msg_type_number_t infoCount = TASK_BASIC_INFO_COUNT;
    kern_return_t kernReturn = task_info(mach_task_self(),
                                         TASK_BASIC_INFO,
                                         (task_info_t)&taskInfo,
                                         &infoCount);
    if (kernReturn != KERN_SUCCESS ) {
        return NSNotFound;
    }
    return taskInfo.resident_size ;

}
@end
