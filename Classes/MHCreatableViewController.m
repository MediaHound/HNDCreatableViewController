//
//  MHCreatableViewController.m
//  mediaHound
//
//  Created by Dustin Bachrach on 9/24/14.
//  Copyright (c) 2014 Media Hound. All rights reserved.
//

#import "MHCreatableViewController.h"


@implementation MHCreatableViewControllerMixin

+ (instancetype)create
{
    NSString* viewControllerStoryboard = [self viewControllerStoryboard];
    NSString* viewControllerIdentifier = [self viewControllerIdentifier];
    if (!viewControllerStoryboard || !viewControllerIdentifier) {
        return [[self alloc] init];
    }
    else {
        UIStoryboard* storyboard = [UIStoryboard storyboardWithName:viewControllerStoryboard bundle:nil];
        return [storyboard instantiateViewControllerWithIdentifier:viewControllerIdentifier];
    }
}

+ (NSString*)viewControllerIdentifier
{
    return nil;
}

+ (NSString*)viewControllerStoryboard
{
    return nil;
}

@end
