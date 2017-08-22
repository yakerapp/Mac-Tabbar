//
//  TabbarView.m
//  TitleBar
//
//  Created by yaker on 2017/8/21.
//  Copyright © 2017年 yaker. All rights reserved.
//

#import "TabbarView.h"
#import "TabbarBtn.h"

@interface TabbarView(){
    TabbarBtn *_lastSelectBtn;//上一个被选中的按钮
}

@property (weak) IBOutlet TabbarBtn *messageBtn;

@property (weak) IBOutlet TabbarBtn *contactBtn;

@property (weak) IBOutlet TabbarBtn *moreBtn;

//关联同一个方法
- (IBAction)itemButtonClicked:(TabbarBtn*)sender;

@end

@implementation TabbarView

- (instancetype)initWithCoder:(NSCoder *)coder{
    self = [super initWithCoder:coder];
    if (self){
        [self setup];
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
}
- (void)setup{
    //从xib中加载控件
    [[NSBundle mainBundle]loadNibNamed:@"TabbarView" owner:self topLevelObjects:nil];
    [self addSubview:self.messageBtn];
    [self addSubview:self.contactBtn];
    [self addSubview:self.moreBtn];
    
    //图片赋值
    self.messageBtn.normalImageName = @"menu-message-normal";
    self.messageBtn.downImageName = @"menu-message-down";
    self.messageBtn.selected = YES;
    _lastSelectBtn = self.messageBtn;
    
    self.contactBtn.normalImageName = @"menu-contact-normal";
    self.contactBtn.downImageName = @"menu-contact-down";
    
    self.moreBtn.normalImageName = @"menu-more-normal";
    self.moreBtn.downImageName = @"menu-more-down";
    
    //取消按钮高亮状态，去掉点击时的灰色背景
    [self.messageBtn.cell setHighlightsBy:NSNoCellMask];
    [self.contactBtn.cell setHighlightsBy:NSNoCellMask];
    [self.moreBtn.cell setHighlightsBy:NSNoCellMask];
}

- (IBAction)itemButtonClicked:(TabbarBtn*)sender {
    //新旧选中状态切换
    _lastSelectBtn.selected = NO;
    sender.selected = YES;
    _lastSelectBtn = sender;
}
@end
