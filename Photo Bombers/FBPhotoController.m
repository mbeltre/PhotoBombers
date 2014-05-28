//
//  FBPhotoController.m
//  Photo Bombers
//
//  Created by Miguel Beltre on 22/05/14.
//  Copyright (c) 2014 Miguel Beltre. All rights reserved.
//

#import "FBPhotoController.h"
#import <SAMCache/SAMCache.h>

@implementation FBPhotoController

+(void)imageForPhoto:(NSDictionary *)photo size:(NSString *)size completion:(void(^)(UIImage *image))completion
{
    
    if (!photo || !size || !completion) {
        return;
    }
    
    NSString *key = [NSString stringWithFormat:@"%@-thumbnail", photo[@"id"]];
    UIImage *image = [[SAMCache sharedCache] imageForKey:key];
    if (image) {
        completion(image);
        return;
    }
    
    NSURL *url = [NSURL URLWithString:photo[@"images"][size][@"url"]];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLSessionDownloadTask *task = [session downloadTaskWithRequest:request completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error) {
        NSData *imageData = [[NSData alloc] initWithContentsOfURL:location];
        UIImage *image = [UIImage imageWithData:imageData];
        [[SAMCache sharedCache] setImage:image forKey:key];
        dispatch_async(dispatch_get_main_queue(), ^{
            completion(image);
        });
    }];
    
    [task resume];

}

@end
