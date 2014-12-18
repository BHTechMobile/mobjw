//
//  LoginModel.m
//  mobjw
//
//  Created by Duy Pham on 12/16/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import "LoginModel.h"
#import "DropboxServices.h"

@implementation LoginModel

- (void)linkWithDropboxFromViewController:(UIViewController *)vc completion:(void (^)(NSError *error))completionBlock
{
    if (completionBlock != nil )
    {
        [[DropboxServices sharedServices] startSessionFromViewController:vc success:^{
            NSLog(@"Dropbox log on succeeded");
            completionBlock(nil);
        } failure:^(NSError * error) {
            if (error != nil)
            {
                NSLog(@"Dropbox log on failed with error : %@",error);
                completionBlock(error);
            }
            else
            {
                /* Dropbox view - cancel pressed , error is nil */
                NSLog(@"Dropbox log on failed with unkown error");
                completionBlock([NSError errorWithDomain:@"MainDomain" code:0 userInfo:[NSDictionary dictionaryWithObject:@"Unknown Error" forKey:NSLocalizedDescriptionKey]]);
            }
        }];
    }
    else
    {
        NSLog(@"linkWithDropboxFromViewController:completion: Invalid input");
    }
}

@end
