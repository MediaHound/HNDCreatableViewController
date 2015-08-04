//
//  HNDCreatableViewController.h
//  HNDCreatableViewController
//
//  Created by Dustin Bachrach on 9/24/14.
//  Copyright (c) 2014 MediaHound. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * A Creatable view controller has a +create method
 * which creates a new view controller.
 * View Controllers can register a storyboard and view
 * controller identifier so that +create knows where
 * to load the view controller from.
 */
@protocol HNDCreatableViewController <NSObject>

@optional

/**
 * Creates a view controller.
 */
+ (instancetype)create;

/**
 * The view controller identifier used for +create.
 */
+ (NSString*)viewControllerIdentifier;

/**
 * The storyboard used for +create.
 */
+ (NSString*)viewControllerStoryboard;

@end


#define HNDCreatableViewControllerMixinSynthesizeProperties 

/**
 * Mix this mixin into your View Controllers to add a +create method.
 * You must implement +viewControllerIdentifier and +viewControllerStoryboard
 * for +create to work.
 * You should use AtSugarMixin to mix this into your view controller.
 */
@interface HNDCreatableViewControllerMixin : NSObject <HNDCreatableViewController>

@end
