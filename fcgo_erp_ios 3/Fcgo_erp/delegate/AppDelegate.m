//
//  AppDelegate.m
//  Fcgo_erp
//
//  Created by huafanxiao on 2018/1/30.
//  Copyright © 2018年 huafanxiao. All rights reserved.
//

#import "AppDelegate.h"
#import "Fcgo_MainVC.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    [self rootVC];
    return YES;
}
#pragma mark 设置rootVC

- (void)rootVC
{
    Fcgo_MainVC *lvc = [[Fcgo_MainVC alloc] init];
    self.window.rootViewController = lvc;
    
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application
{
    [[SDWebImageManager sharedManager] cancelAll];
    [[SDImageCache sharedImageCache] setValue:nil forKey:@"memCache"];
}

@end
