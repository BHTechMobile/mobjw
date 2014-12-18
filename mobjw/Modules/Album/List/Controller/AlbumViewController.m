//
//  AlbumViewController.m
//  mobjw
//
//  Created by Duy Pham on 12/16/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import "AlbumViewController.h"
#import "AlbumModel.h"
#import "AlbumViewDataSource.h"
#import "Photo.h"
#import "PhotoCell.h"

static NSString * const PhotoCellId = @"PhotoCell";

@interface AlbumViewController () <UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
{
    AlbumModel* _mmodel;
    AlbumViewDataSource* _datasource;
}
@end

@implementation AlbumViewController
{
    __weak IBOutlet UICollectionView *_collectionView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _mmodel = [[AlbumModel alloc] init];
    [self setupAlbumView];
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
- (void)setupAlbumView
{
    CellConfigBlock configBlock = ^(PhotoCell *cell, Photo *photo) {
        [cell configureForPhoto:photo];
    };
    
//TODO:    NSArray *photos = ;
    _datasource = [[AlbumViewDataSource alloc] initWithPhotos:[NSArray array]
                                               cellIdentifier:PhotoCellId
                                           configureCellBlock:configBlock];
    _collectionView.dataSource = _datasource;
    [_collectionView registerNib:[PhotoCell nib] forCellWithReuseIdentifier:PhotoCellId];
}

//TODO: update datasource

#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    // TODO: Select Item
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
    
}
//- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    // TODO: Deselect item
//}

@end
