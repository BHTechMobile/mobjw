//
//  AlbumModel.h
//  mobjw
//
//  Created by Duy Pham on 12/16/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Photo.h"

@interface AlbumModel : NSObject

- (void)fetchPhotosCompletion:(void(^)(NSError *error, NSArray* photos))completionBlock;

@end
