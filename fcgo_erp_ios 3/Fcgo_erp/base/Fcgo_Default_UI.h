//
//  Fcgo_Default_UI.h
//  Fgco_erp
//
//  Created by huafanxiao on 2018/1/30.
//  Copyright © 2018年 huafanxiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Fcgo_Default_UI : UIControl
@property (nonatomic,copy)void(^reloadBlock)(void);//点击重新加载的control
@property (nonatomic,copy) NSString *titleString,*imageString;

- (instancetype)initWithFrame:(CGRect)frame;
@end
