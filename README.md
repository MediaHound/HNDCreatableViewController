# HNDCreatableViewController

[![CI Status](http://img.shields.io/travis/Dustin Bachrach/HNDCreatableViewController.svg?style=flat)](https://travis-ci.org/Dustin Bachrach/HNDCreatableViewController)
[![Version](https://img.shields.io/cocoapods/v/HNDCreatableViewController.svg?style=flat)](http://cocoapods.org/pods/HNDCreatableViewController)
[![License](https://img.shields.io/cocoapods/l/HNDCreatableViewController.svg?style=flat)](http://cocoapods.org/pods/HNDCreatableViewController)
[![Platform](https://img.shields.io/cocoapods/p/HNDCreatableViewController.svg?style=flat)](http://cocoapods.org/pods/HNDCreatableViewController)

## What is HNDCreatableViewController

We often want to construct View Controllers that we designed in Storyboards. If you want to load these ViewControllers, you need to tightly couple your code that creates the View Controller to know which Storyboard they are defined in. Using HNDCreatableViewController, we store that information directly in the View Controller so that other parts of our application can simply `create` a View Controller without having to know which Storyboard implements it.

Consider a `MyAwesomeViewController`, which is designed inside the `Awesome.storyboard` and has a View Controller Identifier of `TotesAwesome`.

We define our `MyAwesomeViewController` to conform to `HNDCreatableViewController`:

```objc
#import <HNDCreatableViewController/HNDCreatableViewController.h>

@interface MyAwesomeViewController : UIViewController <HNDCreatableViewController>

@end
```

We then implement `MyAwesomeViewController` and define its Storyboard and View Controller Identifier:

```objc
#import <AtSugar/AtSugar.h>
#import <AtSugarMixin/ASMixin.h>

@implementation MyAwesomeViewController

@mixin (MyAwesomeViewController, HNDCreatableViewControllerMixin)

@declare_class_property (viewControllerStoryboard, @"Awesome")
@declare_class_property (viewControllerIdentifier, @"TotesAwesome")

@end
```

We used [AtSugar](https://github.com/MediaHound/AtSugar) and [AtSugarMixin](https://github.com/MediaHound/AtSugarMixin) to make the implementation short and to the point.

That's it. Now if you want to create a `MyAwesomeViewController` from somewhere else in your code you can just do:

```objc
MyAwesomeViewController* vc = [MyAwesomeViewController create];
[self presentViewController:vc animated:YES completion:nil];
```

## Installation

HNDCreatableViewController is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following lines to your Podfile. Note: you should use [AtSugar](https://github.com/MediaHound/AtSugar) and [AtSugarMixin](https://github.com/MediaHound/AtSugarMixin), so add it to your Podfile as well.

```ruby
pod "HNDCreatableViewController"
pod "AtSugar"
pod "AtSugarMixin"
```

## Author

Dustin Bachrach, dustin@mediahound.com

## License

HNDCreatableViewController is available under the Apache License 2.0. See the LICENSE file for more info.
