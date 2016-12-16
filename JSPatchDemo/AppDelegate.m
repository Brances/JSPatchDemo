//
//  AppDelegate.m
//  JSPatchDemo
//
//  Created by ZOMAKE on 2016/12/15.
//  Copyright © 2016年 ZOMAKEZOMAKE. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <JSPatchPlatform/JSPatch.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //设置导航
    UINavigationController *nav = [[UINavigationController alloc] init];
    self.window.rootViewController = nav;
    UIViewController *vc = [[ViewController alloc] init];
    [nav addChildViewController:vc];
    
#ifdef DEBUG
    //只对调用了这个方法的客户端生效
    [JSPatch setupDevelopment];
#endif
    
    // 在这里设置好你的KEY
    [JSPatch startWithAppKey:@"60e67591c26ad0df"];
    
    [self jsPatchUserData];
    
    [JSPatch sync];
    
    return YES;
}

/**
 *  设置 JSPatch 信息
 */
- (void)jsPatchUserData{
    //手机系统版本
    NSString *phoneVersion = [[UIDevice currentDevice] systemVersion];
    // app版本
    NSString *app_Version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    //获得build号：
    NSString *app_buildVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    //手机型号
    NSString* phoneModel = [[UIDevice currentDevice] model];
    
    [JSPatch setupUserData:@{@"phoneVersion": phoneVersion,@"app_Version": app_Version,@"app_buildVersion": app_buildVersion, @"phoneModel": phoneModel}];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
