//
//  UploadSelectViewController.m
//  mobjw
//
//  Created by Duy Pham on 12/17/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import "UploadSelectViewController.h"

@interface UploadSelectViewController ()

@end

@implementation UploadSelectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
- (IBAction)capturePressed:(id)sender
{
    [[[UIAlertView alloc] initWithTitle:@"Error" message:@"No implementation yet" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil] show];
}

- (IBAction)cameraRollPressed:(id)sender
{
    [[[UIAlertView alloc] initWithTitle:@"Error" message:@"No implementation yet" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil] show];
}

@end
