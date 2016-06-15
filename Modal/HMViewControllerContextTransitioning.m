//
//  HMViewControllerContextTransitioning.m
//  自定义UIPresentationController
//
//  Created by allen on 16/1/27.
//  Copyright © 2016年 allen. All rights reserved.
//

#import "HMViewControllerContextTransitioning.h"
#import "UIView+Extension.h"
@implementation HMViewControllerContextTransitioning
- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext{
    return 5.0;
}
// This method can only  be a nop if the transition is interactive and not a percentDriven interactive transition.
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{
    
    if (self.isPresent) {
        
        UIView *view= [transitionContext viewForKey:UITransitionContextToViewKey];
//        view.layer.transform =CATransform3DMakeRotation(M_PI_2, 0, 1, 0);
         view.y =-view.height;
        [UIView animateWithDuration:5.0 animations:^{
            view.y =0;
//            view.layer.transform =CATransform3DIdentity;
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
    }else{
        UIView *view= [transitionContext viewForKey:UITransitionContextFromViewKey];
        
       //  view.y =-view.height;
        [UIView animateWithDuration:5.0 animations:^{
            view.y =-view.height;
//            view.layer.transform =CATransform3DMakeRotation(M_PI_2, 0, 1, 0);
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];

    }
}

@end
