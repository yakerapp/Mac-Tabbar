//
//  TabbarBtn.h
//  TitleBar
//
//  Created by yaker on 2017/8/22.
//  Copyright © 2017年 yaker. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TabbarBtn : NSButton

//是否被选中
@property (nonatomic,assign) BOOL selected;

//两种状态的图片名称
@property (copy,nonatomic) NSString *downImageName;

@property (copy,nonatomic) NSString *normalImageName;

@end
