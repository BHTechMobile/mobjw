//
//  LoginModel.h
//  mobjw
//
//  Created by Duy Pham on 12/16/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LoginModel : NSObject

- (void)linkWithDropboxFromViewController:(UIViewController *)vc completion:(void (^)(NSError *error))completionBlock;

@end
