//
//  AlbumWireframe.h
//  mobjw
//
//  Created by Duy Pham on 12/17/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Photo.h"
@interface AlbumWireframe : NSObject

- (void)photoClicked:(Photo *)photo fromViewControllder:(UIViewController *)vc;

@end
