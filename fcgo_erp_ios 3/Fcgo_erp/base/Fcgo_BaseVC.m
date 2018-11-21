//
//  Fcgo_BasicVC.m
//  Fcgo
//
//  Created by huafanxiao on 2017/5/6.
//  Copyright © 2017年 huafanxiao. All rights reserved.
//

#import "Fcgo_BaseVC.h"
#import "Fcgo_Default_UI.h"
@interface Fcgo_BaseVC ()

@property (nonatomic,strong) Fcgo_Default_UI *default_UI;

@end

@implementation Fcgo_BaseVC
/*
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];

}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self setupBasicUI];

}

- (void)setupBasicUI
{
    self.view.backgroundColor = [UIColor whiteColor];
    WEAKSELF(weakSelf)
    //断网时的背景
    [self.view addSubview:self.default_UI];
    self.default_UI.reloadBlock = ^{
        [weakSelf reloadRequest];
    };
}

- (void)reloadRequest
{
    
}

- (void)showNoControl:(BOOL)showNoControl titleString:(NSString *)title imageString:(NSString *)image
{
    if (showNoControl) {
        self.default_UI.hidden = 0;
        self.default_UI.imageString = image;
        self.default_UI.titleString = title;
    }
    else{
        self.default_UI.hidden = 1;
    }
}

- (void)updateNoControlFrame
{
    self.default_UI.frame = CGRectMake(0, 0, kScreenWidth, KScreenHeight);
}

#pragma mark Lazy method

- (Fcgo_Default_UI *)default_UI
{
    if (!_default_UI) {
        Fcgo_Default_UI *default_UI = [[Fcgo_Default_UI alloc]initWithFrame:CGRectMake(0, kNavigationHeight, kScreenWidth, KScreenHeight - kNavigationHeight)];
        default_UI.hidden = 1;
        _default_UI = default_UI;
    }
    return _default_UI;
}*/

@end
