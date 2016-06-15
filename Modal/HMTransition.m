//
//  HMTransition.m
//  自定义UIPresentationController
//
//  Created by allen on 16/1/27.
//  Copyright © 2016年 allen. All rights reserved.
//

#import "HMTransition.h"
#import "HMPresentationController.h"
#import "HMViewControllerContextTransitioning.h"
@implementation HMTransition
SingletonM(transition)
- (nullable UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source NS_AVAILABLE_IOS(8_0){
    HMPresentationController *preVC =[[HMPresentationController alloc]initWithPresentedViewController:presented presentingViewController:presenting];
    return preVC;
}



- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    HMViewControllerContextTransitioning *transition=[[HMViewControllerContextTransitioning alloc] init];
    transition.isPresent=YES;
    return transition;
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    HMViewControllerContextTransitioning *transition=[[HMViewControllerContextTransitioning alloc] init];
    transition.isPresent=NO;
    
    return transition;
}
@end
