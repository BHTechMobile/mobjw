//
//  PhotoCell.h
//  mobjw
//
//  Created by Duy Pham on 12/17/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"

@interface PhotoCell : UICollectionViewCell

+ (UINib *)nib;

- (void)configureForPhoto:(Photo *)photo;

@end
