//
//  FBDetailViewController.m
//  Photo Bombers
//
//  Created by Miguel Beltre on 22/05/14.
//  Copyright (c) 2014 Miguel Beltre. All rights reserved.
//

#import "FBDetailViewController.h"
#import "FBPhotoController.h"

@interface FBDetailViewController ()

@property (nonatomic) UIImageView *imageView;
@property (nonatomic) UIDynamicAnimator *animator;

@end

@implementation FBDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.95];
    
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, -self.view.frame.size.width, self.view.frame.size.width, self.view.frame.size.width)];
    [self.view addSubview:self.imageView];
    [FBPhotoController imageForPhoto:self.photo size:@"standard_resolution" completion:^(UIImage *image) {
        self.imageView.image = image;
    }];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(close)];
    tap.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:tap];
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    UISnapBehavior *snap = [[UISnapBehavior alloc] initWithItem:self.imageView snapToPoint:self.view.center];
    [self.animator addBehavior:snap];
    
}


-(void)close
{
    UISnapBehavior *snap = [[UISnapBehavior alloc] initWithItem:self.imageView snapToPoint:CGPointMake(CGRectGetMidX(self.view.bounds), - CGRectGetMaxY(self.view.bounds) - 180)];
    [self.animator addBehavior:snap];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end































