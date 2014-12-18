//
//  AlbumViewDataSource.h
//  mobjw
//
//  Created by Duy Pham on 12/16/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "Photo.h"
#import "PhotoCell.h"

typedef void (^CellConfigBlock)(PhotoCell* cell, Photo* photo);

@interface AlbumViewDataSource : NSObject <UICollectionViewDataSource>

- (id)initWithPhotos:(NSArray* /* Photo* */)photos
      cellIdentifier:(NSString *)cellIdentifier
  configureCellBlock:(CellConfigBlock)cellConfigBlock;

- (Photo *)photoAtIndexPath:(NSIndexPath *)indexPath;

@end
