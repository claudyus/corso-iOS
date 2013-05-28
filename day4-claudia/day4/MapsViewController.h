//
//  MapsViewController.h
//  day4
//
//  Created by Developer4 on 5/27/13.
//
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapsViewController : UIViewController <MKMapViewDelegate>
{

    IBOutlet MKMapView *map;
}
@end
