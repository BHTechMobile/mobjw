//
//  AlbumViewDataSource.m
//  mobjw
//
//  Created by Duy Pham on 12/16/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import "AlbumViewDataSource.h"

@implementation AlbumViewDataSource
{
    NSArray* _photos;
    NSString* _cellId;
    CellConfigBlock _cellConfigBlock;
}

- (id)initWithPhotos:(NSArray* /* Photo* */)photos
      cellIdentifier:(NSString *)cellIdentifier
  configureCellBlock:(CellConfigBlock)cellConfigBlock
{
    self = [super init];
    if (self) {
        _photos = photos;
        _cellId = [cellIdentifier copy];
        _cellConfigBlock = [cellConfigBlock copy];
    }
    return self;
}

- (Photo *)photoAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row < [_photos count])
    {
        return [_photos objectAtIndex:indexPath.row];
    }
    
    return  nil;
}


#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [_photos count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    PhotoCell *cell = (PhotoCell *)[collectionView dequeueReusableCellWithReuseIdentifier:_cellId forIndexPath:indexPath];
    Photo *photo = [self photoAtIndexPath:indexPath];
    if (photo != nil)
    {
        _cellConfigBlock(cell, photo);
    }
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

@end
