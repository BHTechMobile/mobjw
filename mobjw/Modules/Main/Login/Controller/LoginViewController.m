//
//  LoginViewController.m
//  mobjw
//
//  Created by Duy Pham on 12/16/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginModel.h"

@interface LoginViewController ()
{
    LoginModel* _mmodel;
}

@end

@implementation LoginViewController
{
    __weak IBOutlet UITextField *_userTextField;
    __weak IBOutlet UITextField *_passTextField;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _mmodel = [[LoginModel alloc] init];
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
    NSString* user = @"";
    NSString* pass = @"";
    
    if (_userTextField.text != nil) {
        user = _userTextField.text;
    }
    if (_passTextField.text != nil) {
        pass = _passTextField.text;
    }
    
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
       [_mmodel loginWithUsername:user password:pass completion:^(NSError *error) {
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
               });
           }
       }];
    });
}

@end
