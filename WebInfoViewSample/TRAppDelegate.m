//
//  TRAppDelegate.m
//  WebInfoViewSample
//
//  Created by Thorsten Radde on 29.05.13.
//  Copyright (c) 2013 Thorsten Radde. All rights reserved.
//

#import "TRAppDelegate.h"

#import "TRViewController.h"

@implementation TRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self.viewController = [[TRViewController alloc] initWithNibName:@"TRViewController_iPhone" bundle:nil];
    } else {
        self.viewController = [[TRViewController alloc] initWithNibName:@"TRViewController_iPad" bundle:nil];
    }
    UINavigationController *navController = [[UINavigationController alloc]
                                             initWithRootViewController: self.viewController];

    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
