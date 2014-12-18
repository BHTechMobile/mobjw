//
//  HomeViewController.m
//  mobjw
//
//  Created by Duy Pham on 12/16/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import "HomeViewController.h"
#import "LogoffModel.h"
#import "HomeWireframe.h"

@interface HomeViewController ()
{
    LogoffModel* _mmodel;
    HomeWireframe* _wireframe;
}
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _mmodel = [[LogoffModel alloc] init];
    _wireframe = [[HomeWireframe alloc] init];
    [self setTitle:@"Project name"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)viewAlbumPressed:(id)sender
{
    [_wireframe viewAlbumFromHomeViewController:self];
}

- (IBAction)uploadImagesPressed:(id)sender
{
    [_wireframe startUploadFromHomeViewController:self];
}

- (IBAction)logOffPressed:(id)sender
{
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [_mmodel logOffCompletion:^(NSError *error) {
            if (error != nil)
            {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [[[UIAlertView alloc] initWithTitle:@"Error" message:[error localizedDescription] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil] show];
                });
            }
            else
            {
                dispatch_async(dispatch_get_main_queue(), ^{
                    /* login success */
                    [_wireframe logOffFromHomeViewController:self];
                });
            }
        }];
    });
}

@end
