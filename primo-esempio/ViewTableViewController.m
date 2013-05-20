//
//  ViewTableViewController.m
//  primo-esempio
//
//  Created by sviluppatore1 on 20/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import "ViewTableViewController.h"

@interface ViewTableViewController ()

@end

@implementation ViewTableViewController

/* sintetizziamo il set/get di arrayV per recuperarlo dall'altra view */
@synthesize arrayView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
