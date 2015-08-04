//
//  HNDCreatableViewController.m
//  HNDCreatableViewController
//
//  Created by Dustin Bachrach on 9/24/14.
//  Copyright (c) 2014 MediaHound. All rights reserved.
//

#import "HNDCreatableViewController.h"


@implementation HNDCreatableViewControllerMixin

+ (instancetype)create
{
    NSString* viewControllerStoryboard = [self viewControllerStoryboard];
    NSString* viewControllerIdentifier = [self viewControllerIdentifier];
    if (!viewControllerStoryboard || !viewControllerIdentifier) {
        // If the ViewController did not implement the necesarry functions,
        // just fall back on a basic alloc init.
        return [[self alloc] init];
    }
    else {
        UIStoryboard* storyboard = [UIStoryboard storyboardWithName:viewControllerStoryboard bundle:nil];
        return [storyboard instantiateViewControllerWithIdentifier:viewControllerIdentifier];
    }
}

+ (NSString*)viewControllerIdentifier
{
    // The ViewController that mixes this in, should override this method.
    return nil;
}

+ (NSString*)viewControllerStoryboard
{
    // The ViewController that mixes this in, should override this method.
    return nil;
}

@end
