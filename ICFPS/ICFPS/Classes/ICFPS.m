//
//  CHDPFS.m
//  Coffee
//
//  Created by xiongan on 16/8/3.
//  Copyright © 2016年 承道科技. All rights reserved.
//

#import "ICFPS.h"
#import "ICFPSLabel.h"
#import "ICFPSWindow.h"
#import <UIKit/UIKit.h>


@interface ICFPS ()

@end


@implementation ICFPS
{
    UIViewController *_vc;
     ICFPSWindow *_window;
}
+ (instancetype)sharedFPS {
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[ICFPS alloc]init];
        
    });
    return instance;
}
- (instancetype)init {
    if (self = [super init]) {
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.frame = CGRectMake(0,0 , 140, 40);
        ICFPSLabel *fpsLabel = [ICFPSLabel new];
        [fpsLabel sizeToFit];
        fpsLabel.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 250, 1, 140, 18);
        [vc.view addSubview:fpsLabel];
        ICFPSWindow *window = [[ICFPSWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
        window.rootViewController = vc;
        window.userInteractionEnabled = NO;
        window.hidden = NO;
        _vc = vc;
        _window = window;
    
    }
    return self;
}
@end
