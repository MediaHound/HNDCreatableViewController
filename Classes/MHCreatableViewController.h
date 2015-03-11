//
//  MHCreatableViewController.h
//  mediaHound
//
//  Created by Dustin Bachrach on 9/24/14.
//  Copyright (c) 2014 Media Hound. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol MHCreatableViewController <NSObject>

// TODO: Ulgy that these have to be optional for mixins
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


#define MHCreatableViewControllerMixinSynthesizeProperties 


@interface MHCreatableViewControllerMixin : NSObject <MHCreatableViewController>

@end
