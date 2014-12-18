//
//  LoginWireframe.m
//  mobjw
//
//  Created by Duy Pham on 12/16/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import "LoginWireframe.h"

#import "AppDelegate.h"

#import "LoginViewController.h"
#import "HomeViewController.h"

@implementation LoginWireframe

- (void)loginSuccessFromLoginView:(UIViewController *)loginVC
{
    if (loginVC != nil)
    {
        /* implement transition delegate if needed */
        HomeViewController* home = [[HomeViewController alloc] init];
        UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController:home];
        [[AppDelegate sharedAppDelegate].window setRootViewController:nav];
    }
    else
    {
        NSLog(@"loginSuccessFromLoginView: Invalid input");
    }
}

@end
