//
//  ViewController.h
//  gps_test
//
//  Created by sviluppatore1 on 28/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GeoLocation.h"

@interface ViewController : UIViewController <GeoLocatorDelegate>{

    
    IBOutlet UILabel *textLat;
    IBOutlet UILabel *textLon;
    IBOutlet UILabel *textAddress;

    
}

@end
