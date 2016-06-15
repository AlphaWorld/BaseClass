//
//  AppDelegate.m
//  BaseClass
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 ALWZY. All rights reserved.
//

#import "AppDelegate.h"
#import "ZYMainViewModel.h"
#import "ZYBaseNavigationController.h"
#import "ZYMainViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    /*
    int a = 2856;
    int b = 3276;
    int c = 3196;
    int d = 3598;
    int e = 3678;
    int f = 2996;
    int g = 2556;
    int zs = 160500;
    int max  = 20;
    for (int xa = 1; xa<=max; xa++) {
        for (int xb = 1; xb<=max; xb++) {
            for (int xc = 1; xc<=max; xc++) {
                for (int xd = 1; xd<=max; xd++) {
                    for (int xe = 1; xe<=max; xe++) {
                        for (int xf = 1; xf<=max; xf++) {
                            for (int xg = 1; xg<=max; xg++) {
                                if ((a*xa)+(b*xb)+(c*xc)+(d*xd)+(e*xe)+(f*xf)+(g*xg) == zs) {
                                    NSLog(@"a = %d && b = %d && c = %d && d = %d && e = %d && f = %d && g = %d && 总数 = %d ",xa,xb,xc,xd,xe,xf,xg,(a*xa)+(b*xb)+(c*xc)+(d*xd)+(e*xe)+(f*xf)+(g*xg));
                                   
                                }
                            }
                        }
                    }
                }
            }
        }
    }
     */
     
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UINavigationController *navigation = ({
       ZYMainViewController *mainVC = [[ZYMainViewController alloc] initWithViewModel:[[ZYMainViewModel alloc] init]]
        ;
        [[ZYBaseNavigationController alloc] initWithRootViewController:mainVC];
    });
    navigation.navigationBar.setBackgroundColor(VIEWDAYCOLOR,VIEWNIGHTCOLOR);
    self.window.rootViewController = navigation;
    [self.window makeKeyAndVisible];
    return YES;
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
