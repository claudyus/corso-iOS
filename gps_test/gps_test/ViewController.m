//
//  ViewController.m
//  gps_test
//
//  Created by sviluppatore1 on 28/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import "ViewController.h"

GeoLocator * locate;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    locate = [GeoLocator getInstance];
    [locate startLocatingWithDistanceFilter:10];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) locator:(GeoLocator *)locator didReceiveLocation:(CLLocation *)location {
    
    textLat.text = [[NSString alloc] initWithFormat:@"%f", location.coordinate.latitude ];
    textLon.text = [[NSString alloc] initWithFormat:@"%f", location.coordinate.longitude ];
    
    
}
@end
