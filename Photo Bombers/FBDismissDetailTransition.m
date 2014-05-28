//
//  FBDismissDetailTransition.m
//  Photo Bombers
//
//  Created by Miguel Beltre on 23/05/14.
//  Copyright (c) 2014 Miguel Beltre. All rights reserved.
//

#import "FBDismissDetailTransition.h"

@implementation FBDismissDetailTransition

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *detail = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    [UIView animateWithDuration:0.3 animations:^{
        CGRect frame = detail.view.frame;
        frame.origin.x -= frame.size.width;
        detail.view.frame = frame;
    } completion:^(BOOL finished) {
        [detail.view removeFromSuperview];
        [transitionContext completeTransition:YES];
    }];
    
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 0.3;
}

@end
