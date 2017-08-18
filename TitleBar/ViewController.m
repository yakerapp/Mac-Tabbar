//
//  ViewController.m
//  TitleBar
//
//  Created by yaker on 2017/8/18.
//  Copyright © 2017年 yaker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak) IBOutlet NSView *toolView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)viewDidAppear{
    //操作layer属性必须加，否则无效
    _toolView.wantsLayer = YES;
    _toolView.layer.backgroundColor = [NSColor windowBackgroundColor].CGColor;
    
    self.view.wantsLayer = YES;
    self.view.layer.backgroundColor = [NSColor whiteColor].CGColor;
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
