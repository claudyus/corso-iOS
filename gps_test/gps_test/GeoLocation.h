


#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@class GeoLocator;

@protocol GeoLocatorDelegate

//- (void) locator:(GeoLocator *)locator didFindPlacemark:(MKPlacemark *)placemark;
- (void) locator:(GeoLocator *)locator didFailWithError:(NSError *)error;
- (void) locator:(GeoLocator *)locator didReceiveLocation:(CLLocation *)location;

@end

@interface GeoLocator : NSObject <CLLocationManagerDelegate> {
    NSUInteger currentTrials;
}

@property (nonatomic, retain) CLLocationManager *locationManager;
@property (nonatomic, retain) CLLocation *userLocation;
@property (nonatomic, retain) MKPlacemark *userPlacemark;
@property (nonatomic, readonly) BOOL isLocating;
@property (nonatomic, assign) NSUInteger maxTrials;

@property (nonatomic, assign) id delegate;

+ (GeoLocator *) getInstance;

- (void) startLocating;
- (void) startLocatingWithDistanceFilter:(CLLocationDistance)distanceFilter;
- (void) stopLocating;
- (void) restartLocating;

@end
