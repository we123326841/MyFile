//
//  HMPresentationController.m
//  自定义UIPresentationController
//
//  Created by allen on 16/1/27.
//  Copyright © 2016年 allen. All rights reserved.
//

#import "HMPresentationController.h"

@implementation HMPresentationController


-(CGRect)frameOfPresentedViewInContainerView{

    return CGRectInset(self.containerView.bounds, 50, 100);
}
- (void)presentationTransitionWillBegin{
    NSLog(@"presentationTransitionWillBegin");
    self.presentedView.frame =self.containerView.bounds;
    [self.containerView addSubview:self.presentedView];
}
- (void)presentationTransitionDidEnd:(BOOL)completed{
    NSLog(@"presentationTransitionDidEnd");

}
- (void)dismissalTransitionWillBegin{
    NSLog(@"dismissalTransitionWillBegin");
}
- (void)dismissalTransitionDidEnd:(BOOL)completed{
    NSLog(@"dismissalTransitionDidEnd");
    [self.presentedView removeFromSuperview];
}


@end
