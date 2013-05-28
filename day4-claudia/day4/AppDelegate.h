//
//  AppDelegate.h
//  day4
//
//  Created by sviluppatore2 on 27/05/13.
//
//

#import <UIKit/UIKit.h>
#import "MapsViewController.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property (strong, nonatomic) UINavigationController *nav;

@property (strong, nonatomic) UITabBarController *tabBarController;
@property (strong, nonatomic) MapsViewController  *mapsViewController;


@end
