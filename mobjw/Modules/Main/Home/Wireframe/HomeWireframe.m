//
//  HomeWireframe.m
//  mobjw
//
//  Created by Duy Pham on 12/16/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import "HomeWireframe.h"
#import "AppDelegate.h"
#import "LoginViewController.h"
#import "AlbumViewController.h"
#import "UploadSelectViewController.h"


@implementation HomeWireframe

- (void)logOffFromHomeViewController:(UIViewController *)homeVC
{
    if (homeVC != nil)
    {
        /* implement transition delegate if needed */
        LoginViewController* loginvc = [[LoginViewController alloc] init];
        [[AppDelegate sharedAppDelegate].window setRootViewController:loginvc];
    }
    else
    {
        NSLog(@"logOffFromHomeViewController: Invalid input");
    }
}

- (void)viewAlbumFromHomeViewController:(UIViewController *)homeVC;
{
    if (homeVC != nil)
    {
        /* implement transition delegate if needed */
        AlbumViewController* albumlistvc = [[AlbumViewController alloc] init];
        [homeVC.navigationController pushViewController:albumlistvc animated:YES];
    }
    else
    {
        NSLog(@"viewAlbumFromHomeViewController: Invalid input");
    }
}

- (void)startUploadFromHomeViewController:(UIViewController *)homeVC
{
    if (homeVC != nil)
    {
        /* implement transition delegate if needed */
        UploadSelectViewController* uploadvc = [[UploadSelectViewController alloc] init];
        [homeVC.navigationController pushViewController:uploadvc animated:YES];
    }
    else
    {
        NSLog(@"startUploadFromHomeViewController: Invalid input");
    }
}

@end
