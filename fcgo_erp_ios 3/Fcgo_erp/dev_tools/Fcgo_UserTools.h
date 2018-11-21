//
//  Fcgo_UserTools.h
//  Fcgo
//
//  Created by huafanxiao on 2017/5/10.
//  Copyright © 2017年 huafanxiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fcgo_UserTools : NSObject

@property (nonatomic,assign) BOOL                 isFirstLaunch;
@property (nonatomic,assign) BOOL                 isLogin;

@property (nonatomic,strong) NSMutableDictionary  *userDict;
@property (nonatomic,strong) NSMutableDictionary  *deviceDict;
@property (nonatomic,strong) NSMutableArray       *cityArray;//城市

+ (Fcgo_UserTools *)shared;
-(void)clearUserInfomation;

@end
