//
//  FBAppDelegate.m
//  Photo Bombers
//
//  Created by Miguel Beltre on 18/05/14.
//  Copyright (c) 2014 Miguel Beltre. All rights reserved.
//

#import "FBAppDelegate.h"
#import "FBPhotosViewController.h"
#import <SimpleAuth/SimpleAuth.h>


@implementation FBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    SimpleAuth.configuration[@"instagram"] = @{@"client_id" : @"6763d6013c5b4f468ba36898df5bfeeb",
                                               SimpleAuthRedirectURIKey : @"photobombers://auth/instagram"};
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:[[FBPhotosViewController alloc] init]];
    [navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:242.0 / 255.0 green:122.0 / 255.0 blue:87.0 / 255.0 alpha:1.0]];
    navigationController.navigationBar.barStyle = UIBarStyleBlackOpaque;
    
    
    self.window.rootViewController = navigationController;
    
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
