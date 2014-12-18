//
//  LogoffModel.m
//  mobjw
//
//  Created by Duy Pham on 12/16/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import "LogoffModel.h"
#import "DropboxServices.h"

@implementation LogoffModel

- (void)logOffCompletion:(void (^)(NSError* error))completionBlock
{
    if (completionBlock != nil)
    {
        [[DropboxServices sharedServices] unlink];
        NSLog(@"Dropbox log off succeeded");
        completionBlock(nil);
    }
    else
    {
        NSLog(@"logOffCompletion: Invalid input");
    }
}

@end
