//
//  CustomWindowController.m
//  TitleBar
//
//  Created by yaker on 2017/8/18.
//  Copyright © 2017年 yaker. All rights reserved.
//

#import "CustomWindowController.h"
#import "Masonry.h"

@interface CustomWindowController ()

@end

@implementation CustomWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    //初始化一下
    [self windowResizeAction];

    //监听窗口变化
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(windowResizeAction) name:NSWindowDidResizeNotification object:nil];
    
}

- (void)windowResizeAction{
    //获取到windows的主视图
    NSView * themeView = self.window.contentView.superview;
    //根据层级结构获取到标题栏视图
    NSView * titleView = themeView.subviews.count > 1?themeView.subviews[1]:nil;
    titleView.autoresizesSubviews = YES;
    
    //重新对标题栏视图的尺寸进行布局，使得系统的功能按钮出现在自定义标题中的竖直中间
    [titleView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@10);
        make.width.equalTo(@70);
        make.top.equalTo(@18);
        make.height.equalTo(@22);
    }];
}

@end
