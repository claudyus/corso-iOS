//
//  MapsViewController.m
//  day4
//
//  Created by Developer4 on 5/27/13.
//
//

#import "MapsViewController.h"


@interface MapsViewController ()

@end

@implementation MapsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void)mapView:(MKMapView *)mapView didAddAnnotationViews:(NSArray *)views{
    
}

-(void) setRegion: (CLLocationCoordinate2D) _coordinate
         whthZone:(float) _zone{
    CLLocationCoordinate2D coordinateCentro = _coordinate;
    if(CLLocationCoordinate2DIsValid(coordinateCentro)){
        
        map.region =  MKCoordinateRegionMake(coordinateCentro, MKCoordinateSpanMake(_zone, _zone));
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    /*
     41.84578,12.486793
     */
    
    
    map.mapType = MKMapTypeSatellite;
    CLLocationCoordinate2D coord = CLLocationCoordinate2DMake((CLLocationDegrees) 41.84578, (CLLocationDegrees) 12.486793);
    //[self setRegion:coord whthZone:0.01];
    [self setRegion:coord whthZone:0.01];
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    
    point.coordinate = coord;
    point.title = @"sono qui";
    point.subtitle =@"Ciao!!";
    
    
    [map addAnnotation:point];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
