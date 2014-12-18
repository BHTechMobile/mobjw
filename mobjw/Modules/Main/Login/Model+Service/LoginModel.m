//
//  LoginModel.m
//  mobjw
//
//  Created by Duy Pham on 12/16/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import "LoginModel.h"

@implementation LoginModel

- (void)loginWithUsername:(NSString *)username password:(NSString *)password completion:(void (^)(NSError *error))completionBlock
{
    if (username != nil && password != nil && completionBlock != nil )
    {
        completionBlock([NSError errorWithDomain:@"LoginDomain" code:0 userInfo:[NSDictionary dictionaryWithObject:@"Cannot login" forKey:NSLocalizedDescriptionKey]]);
    }
    else
    {
        NSLog(@"loginWithUsername:password:completion: Invalid input");
    }
}

@end
