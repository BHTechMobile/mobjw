//
//  LoginViewController.m
//  mobjw
//
//  Created by Duy Pham on 12/16/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginModel.h"
#import "LoginWireframe.h"

#import "DropboxServices.h"

@interface LoginViewController ()
{
    LoginModel* _mmodel;
    LoginWireframe* _wireframe;
}

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _mmodel = [[LoginModel alloc] init];
    _wireframe = [[LoginWireframe alloc] init];
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
- (IBAction)loginPressed:(id)sender
{
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
       [_mmodel linkWithDropboxFromViewController:self completion:^(NSError *error) {
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
                   [_wireframe loginSuccessFromLoginView:self];
               });
           }
       }];
    });
}

@end
