//
//  Fcgo_UserTools.m
//  Fcgo
//
//  Created by huafanxiao on 2017/5/10.
//  Copyright © 2017年 huafanxiao. All rights reserved.
//

#import "Fcgo_UserTools.h"

static NSString *const kFirstLaunchKey     = @"kFirstLaunchKey";
static NSString *const kUserLoginKey       = @"kUserLoginKey";
static NSString *const kUserDictKey        = @"kUserDictKey";
static NSString *const kDeviceDictKey      = @"kDeviceDictKey";
static NSString *const kAreaCityKey        = @"kAreaCityKey";

@implementation Fcgo_UserTools

//之所以实现@synthesize，是可以同时实现set get方法
@synthesize isFirstLaunch   = _isFirstLaunch;
@synthesize isLogin         = _isLogin;
@synthesize userDict        = _userDict;
@synthesize deviceDict      = _deviceDict;
@synthesize cityArray       = _cityArray;

+ (Fcgo_UserTools *)shared
{
    static  Fcgo_UserTools  *_shareInstance = nil;
    static  dispatch_once_t  onceToken;
    dispatch_once(&onceToken, ^{
        _shareInstance=[[Fcgo_UserTools  alloc] init];
    });
    return _shareInstance;
}
- (void)clearUserInfomation
{
    [OBJC_Defaults removeObjectForKey:kUserLoginKey];
    [OBJC_Defaults removeObjectForKey:kUserDictKey];
    
    //[[NSFileManager defaultManager] removeItemAtPath:[NSHomeDirectory() stringByAppendingPathComponent:@"Documents/adImagePath"] error:nil];
}

- (void)setIsFirstLaunch:(BOOL)isFirstLaunch
{
    _isFirstLaunch = isFirstLaunch;
    [OBJC_Defaults  setBool:isFirstLaunch forKey:kFirstLaunchKey];
    [OBJC_Defaults  synchronize];
}

- (BOOL)isFirstLaunch
{
    _isFirstLaunch = [OBJC_Defaults boolForKey:kFirstLaunchKey];
    return _isFirstLaunch;
}

- (void)setIsLogin:(BOOL)isLogin
{
    _isLogin = isLogin;
    [OBJC_Defaults  setBool:isLogin forKey:kUserLoginKey];
    [OBJC_Defaults  synchronize];
}

- (BOOL)isLogin
{
    _isLogin = [OBJC_Defaults boolForKey:kUserLoginKey];
    return _isLogin;
}

- (void)setUserDict:(NSMutableDictionary *)userDict
{
    _userDict = userDict;
    [OBJC_Defaults setObject:_userDict forKey:kUserDictKey];
    [OBJC_Defaults synchronize];
}

-(void)setDeviceDict:(NSMutableDictionary *)deviceDict{
    _deviceDict = deviceDict;
    [OBJC_Defaults setObject:_deviceDict forKey:kDeviceDictKey];
    [OBJC_Defaults synchronize];
}
- (NSMutableDictionary  *)userDict
{
    _userDict = [OBJC_Defaults objectForKey:kUserDictKey];
    return _userDict.mutableCopy;
}

-(NSMutableDictionary *)deviceDict{
    _deviceDict = [OBJC_Defaults objectForKey:kDeviceDictKey];
    return _deviceDict;
}

- (void)setCityArray:(NSMutableArray *)cityArray
{
    _cityArray=cityArray;
    [OBJC_Defaults  setObject:_cityArray forKey:kAreaCityKey];
    [OBJC_Defaults  synchronize];
}

- (NSMutableArray *)cityArray
{
    _cityArray=[OBJC_Defaults  objectForKey:kAreaCityKey];
    return _cityArray;
}
@end
