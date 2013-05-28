


#import "GeoLocation.h"

@implementation GeoLocator

@synthesize locationManager;
@synthesize userLocation;
@synthesize userPlacemark;
@synthesize isLocating;
@synthesize maxTrials;

@synthesize delegate;

static GeoLocator *instance;

+ (id) getInstance
{
    if (instance == nil) {
        instance = [[GeoLocator alloc] init];
    }
    return instance;
}

- (id) init
{
    if ((self = [super init])) {
        maxTrials = 10;
    }
    return self;
}

- (void) dealloc
{
    self.locationManager = nil;
    self.userLocation = nil;
    self.userPlacemark = nil;
   
}

- (void) startLocating
{
    [self startLocatingWithDistanceFilter:50];
}

// non avvia più volte
- (void) startLocatingWithDistanceFilter:(CLLocationDistance)distanceFilter
{
    if (isLocating) {
        return;
    }

    // lo alloca una volta sola
    if (!locationManager) {
        locationManager = [[CLLocationManager alloc] init];
        locationManager.delegate = self;
    }

    // tenta un numero finito di volte
    currentTrials = maxTrials;

    [locationManager startUpdatingLocation]; 
    locationManager.distanceFilter = distanceFilter;
    isLocating = YES;
}

// stoppa se avviato
- (void) stopLocating
{
    if (!isLocating) {
        return;
    }

    [locationManager stopUpdatingLocation]; 
    isLocating = NO;
}

// (ri)avvia sia se stoppato che in esecuzione (con stessa distanza)
- (void) restartLocating
{
    if (isLocating) {
        [locationManager stopUpdatingLocation];
    }

    // tenta un numero finito di volte
    currentTrials = maxTrials;

    [locationManager startUpdatingLocation];
}

#pragma mark - CLLocationManagerDelegate

- (void) locationManager:(CLLocationManager *)manager 
     didUpdateToLocation:(CLLocation *)newLocation
            fromLocation:(CLLocation *)oldLocation
{
    // location recuperata, arresta la ricerca
    [locationManager stopUpdatingLocation];
    isLocating = NO;
    /*
    CLGeocoder * geo = [[CLGeocoder alloc] init];
    
    [geo geocodeAddressString:@"via pereira" completionHandler:^(NSArray *placemarks, NSError *error){
    
                    // Make sure the geocoder did not produce an error
                    // before continuing
                 if(!error){
        
                            // Iterate through all of the placemarks returned
                            // and output them to the console
                            for(CLPlacemark *placemark in placemarks){
                                     NSLog(@"%@",[placemark description]);
                                 }
                        }
                     else{
                             // Our geocoder had an error, output a message
                             // to the console
                           NSLog(@"There was a forward geocoding error\n%@",
                                     [error localizedDescription]);
                         }
                 }];
     */
    
    self.userLocation = newLocation;

    [delegate locator:self didReceiveLocation:newLocation];
    
}

- (void) locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
   
    // ritenta solo su errori temporanei
    if ([error domain] != kCLErrorDomain) {
        [locationManager stopUpdatingLocation];

        // numero finito di tentativi
        if (currentTrials > 0) {
            --currentTrials;
            [locationManager startUpdatingLocation];
        } else {
            [delegate locator:self didFailWithError:error];
        }
    } else {
        [locationManager stopUpdatingLocation];
        
        [delegate locator:self didFailWithError:error];
    }
    isLocating = NO;

}


@end
