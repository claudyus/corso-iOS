//
//  ViewController.h
//  day5
//
//  Created by sviluppatore2 on 28/05/13.
//  Copyright (c) 2013 sviluppatore2. All rights reserved.
//

#import <UIKit/UIKit.h>
// Import Corelocation, step #1
#import <CoreLocation/CoreLocation.h>

// UIViewController must inherit CLLocationmanagerDelegate in order to use delegation
@interface ViewController : UIViewController <CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *latitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *longitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UIButton *askGPSbutton;
- (IBAction)askGPSposition:(id)sender;

@end
