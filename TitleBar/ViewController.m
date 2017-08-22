//
//  ViewController.m
//  TitleBar
//
//  Created by yaker on 2017/8/18.
//  Copyright © 2017年 yaker. All rights reserved.
//

#import "ViewController.h"
#import "TabbarView.h"

@interface ViewController ()

@property (weak) IBOutlet NSVisualEffectView *effectView;

@property (weak) IBOutlet TabbarView *tabbarView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (void)viewDidAppear{
    //操作layer属性必须加，否则无效
    self.view.wantsLayer = YES;
    self.view.layer.backgroundColor = [NSColor whiteColor].CGColor;
    
    //修改毛玻璃的风格
    self.effectView.material = NSVisualEffectMaterialLight;
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
