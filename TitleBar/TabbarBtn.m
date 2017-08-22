//
//  TabbarBtn.m
//  TitleBar
//
//  Created by yaker on 2017/8/22.
//  Copyright © 2017年 yaker. All rights reserved.
//

#import "TabbarBtn.h"

@implementation TabbarBtn

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    //响应鼠标移入移出事件
    NSTrackingArea *area =[[NSTrackingArea alloc] initWithRect:self.bounds options:NSTrackingMouseEnteredAndExited|NSTrackingActiveInKeyWindow owner:self userInfo:nil];
    [self addTrackingArea:area];
}

//防止按钮按下后移出区域，按钮状态不改变的情况
- (void)mouseExited:(NSEvent *)event{
    if (!self.selected){
        self.image = [NSImage imageNamed:self.normalImageName];
    }
}
- (void)mouseDown:(NSEvent *)event{
    self.image = [NSImage imageNamed:self.downImageName];
    
    //这句必须加，防止按钮的点击事件被覆盖
    [super mouseDown:event];
}
- (void)mouseUp:(NSEvent *)event{
    if (!self.selected){
        self.image = [NSImage imageNamed:self.normalImageName];
    }
    [super mouseUp:event];
}

//切换选中状态
- (void)setSelected:(BOOL)selected{
    _selected = selected;
    
    self.image = _selected?[NSImage imageNamed:self.downImageName]:[NSImage imageNamed:self.normalImageName];
}

@end
