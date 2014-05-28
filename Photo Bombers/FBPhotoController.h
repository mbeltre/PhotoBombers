//
//  FBPhotoController.h
//  Photo Bombers
//
//  Created by Miguel Beltre on 22/05/14.
//  Copyright (c) 2014 Miguel Beltre. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FBPhotoController : NSObject

+(void)imageForPhoto:(NSDictionary *)photo size:(NSString *)size completion:(void(^)(UIImage *image))completion;

@end
