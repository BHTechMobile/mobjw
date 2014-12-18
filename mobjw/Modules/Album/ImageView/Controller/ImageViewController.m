//
//  ImageViewController.m
//  mobjw
//
//  Created by Duy Pham on 12/16/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@end

@implementation ImageViewController
{
    __weak IBOutlet UILabel *_locationLabel;
    __weak IBOutlet UIButton *_audioButton;/* for disabling when no audio exists */
    __weak IBOutlet UIButton *_noteButton;/* for disabling when no note exists */
}

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
- (IBAction)audioButtonPressed:(id)sender {
}
- (IBAction)noteButtonPressed:(id)sender {
}

@end
