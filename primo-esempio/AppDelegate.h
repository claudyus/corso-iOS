//
//  AppDelegate.h
//  primo-esempio
//
//  Created by sviluppatore1 on 20/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

/*aggiungiamo la proprietà del navigation controller */
@property (strong, nonatomic) UINavigationController *navControl;

@end
