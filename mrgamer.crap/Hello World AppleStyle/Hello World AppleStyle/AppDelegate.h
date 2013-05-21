//
//  AppDelegate.h
//  Hello World AppleStyle
//
//  Created by sviluppatore2 on 20/05/13.
//  Copyright (c) 2013 sviluppatore2. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

// ma perche devo aggiungere quest ocoso???
@property (strong, nonatomic) UINavigationController * navController;

@end
