//
//  CustomWindow.m
//  TitleBar
//
//  Created by yaker on 2017/8/18.
//  Copyright © 2017年 yaker. All rights reserved.
//

#import "CustomWindow.h"
#import "Masonry.h"

@implementation CustomWindow

- (instancetype)initWithContentRect:(NSRect)contentRect
                          styleMask:(NSWindowStyleMask)aStyle
                            backing:(NSBackingStoreType)bufferingType
                              defer:(BOOL)flag{
    self = [super initWithContentRect:contentRect
                            styleMask:aStyle
                              backing:bufferingType
                                defer:flag];
    if (self) {
        //设置为点击背景可以移动窗口
        [self setMovableByWindowBackground:YES];
        //设置标题栏透明
        self.titlebarAppearsTransparent = YES;
        //隐藏窗口标题
        self.titleVisibility = NSWindowTitleHidden;
    }
    return self;
}

- (void)setContentView:(__kindof NSView *)contentView{
    [super setContentView:contentView];
}

// 不加上此代码window将无法响应
- (BOOL)canBecomeKeyWindow{
    return YES;
}
- (BOOL)canBecomeMainWindow{
    return YES;
}
@end
