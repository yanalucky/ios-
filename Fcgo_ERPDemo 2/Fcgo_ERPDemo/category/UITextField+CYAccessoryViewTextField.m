//
//  UITextField+CYAccessoryViewTextField.m
//  MBB1
//
//  Created by 陈彦 on 15/9/22.
//  Copyright (c) 2015年 elsa. All rights reserved.
//

#import "UITextField+CYAccessoryViewTextField.h"

@implementation UITextField (CYAccessoryViewTextField)
-(void)setLeftViewOfBlankforWidth:(CGFloat)leftWidth{
    CGRect frame = self.frame;
    frame.size.width = leftWidth;
    UIView *leftview = [[UIView alloc] initWithFrame:frame];
    self.leftViewMode = UITextFieldViewModeAlways;
    self.leftView = leftview;
    //136
    [self setValue:[UIColor colorWithRed:203/255.0 green:205/255.0 blue:208/255.0 alpha:1] forKeyPath:@"_placeholderLabel.textColor"];
    [self setValue:[UIFont systemFontOfSize:13] forKeyPath:@"_placeholderLabel.font"];
    
    self.font = [UIFont systemFontOfSize:13];
//    CGRect frame0 = CGRectMake(leftWidth, -3, frame.size.width-leftWidth, 20);
//    [self setValue:NSStringFromCGRect(frame0) forKeyPath:@"_placeholderLabel.frame"];
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

//-(CGRect)placeholderRectForBounds:(CGRect)bounds
//{
//    
//    return CGRectInset(bounds, 0, -3);
//    CGRect inset = CGRectMake(bounds.origin.x, bounds.origin.y-3, bounds.size.width, bounds.size.height);
//    return inset;
//}


@end
