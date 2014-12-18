//
//  PhotoCell.m
//  mobjw
//
//  Created by Duy Pham on 12/17/14.
//  Copyright (c) 2014 Duy Pham. All rights reserved.
//

#import "PhotoCell.h"

@implementation PhotoCell

+ (UINib *)nib
{
    return [UINib nibWithNibName:@"PhotoCell" bundle:nil];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)configureForPhoto:(Photo *)photo
{
    
}

@end
