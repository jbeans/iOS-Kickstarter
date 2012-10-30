//
//  JBAppDelegate.m
//  iOS Bootstrap
//
//  Created by Andreas Johannessen on 10/29/12.
//  Copyright (c) 2012 JBeans. All rights reserved.
//

#import "JBAppDelegate.h"
#import "JBDashboardViewController.h"
#import "JBAccessoriesViewController.h"

@implementation JBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    // Creates the view controllers which will be the first view on each tab.
    JBDashboardViewController* dashboardVC = [[JBDashboardViewController alloc] initWithNibName:@"JBDashboardViewController" bundle:nil];
    JBAccessoriesViewController* accessoriesVC = [[JBAccessoriesViewController alloc] initWithNibName:@"JBAccessoriesViewController" bundle:nil];
    
    // Uses a navigation controller for each tab. It will then be possible to add a hierachy of view controllers with push/pop functionality.
    UINavigationController* dashboardNVC = [[UINavigationController alloc] initWithRootViewController:dashboardVC];
    UINavigationController* accessoriesNVC = [[UINavigationController alloc] initWithRootViewController:accessoriesVC];
    dashboardNVC.tabBarItem.title = NSLocalizedString(@"JBDashboardViewController_tabTitle", nil);
    accessoriesNVC.tabBarItem.title = NSLocalizedString(@"JBAccessoriesViewController_tabTitle", nil);
    
    // Contains the view controllers (which is wrapped inside a UINavigationController) that will be added on the tab bar.
    NSArray* tabBarControllers = [NSArray arrayWithObjects:dashboardNVC, accessoriesNVC, nil];
    
    UITabBarController* tabBarVC = [[UITabBarController alloc] init];
    [tabBarVC setViewControllers:tabBarControllers];
    
    // Adds the tab bar controller as root.
    self.window.rootViewController = tabBarVC;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
