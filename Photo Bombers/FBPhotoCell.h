//
//  FBPhotoCell.h
//  Photo Bombers
//
//  Created by Miguel Beltre on 18/05/14.
//  Copyright (c) 2014 Miguel Beltre. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FBPhotoCell : UICollectionViewCell

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) NSDictionary *photo;

@end
