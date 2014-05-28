//
//  FBPresentDetailTransition.m
//  Photo Bombers
//
//  Created by Miguel Beltre on 23/05/14.
//  Copyright (c) 2014 Miguel Beltre. All rights reserved.
//

#import "FBPresentDetailTransition.h"

@implementation FBPresentDetailTransition

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *detail = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *container = [transitionContext containerView];
    
    //detail.view.alpha = 0.0;
    CGRect frame = container.bounds;
    frame.origin.y += 20;
    frame.size.height -= 20;
    frame.origin.x -= frame.size.width / 2;
    detail.view.frame = frame;

    [container addSubview:detail.view];
    
    [UIView animateWithDuration:0.3 animations:^{
        CGRect frame = detail.view.frame;
        frame.origin.x = 0;
        detail.view.frame = frame;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];

}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 0.3;
}



@end
