//
//  AlbumWireframe.m
//  mobjw
//
//  Created by Duy Pham on 12/17/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import "AlbumWireframe.h"
#import "ImageViewController.h"

@implementation AlbumWireframe

- (void)photoClicked:(Photo *)photo fromViewControllder:(UIViewController *)vc
{
    if (photo != nil && vc != nil)
    {
        /* implement transition delegate if needed */
        ImageViewController *imagevc = [[ImageViewController alloc] init];
        imagevc.photo = photo;
        [vc.navigationController pushViewController:imagevc animated:YES];
    }
}

@end
