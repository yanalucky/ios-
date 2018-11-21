//
//  Fcgo_AddressPickerView.h
//  Fcgo_erp
//
//  Created by huafanxiao on 2018/1/30.
//  Copyright © 2018年 huafanxiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Fcgo_AddressPickerView : UIControl
- (instancetype)initWithFrame:(CGRect)frame selectAddressBlock:(void(^)(NSMutableDictionary *addressDict))addressBlock;
- (void)hide;
- (void)show;
@end
