//
//  ViewController.m
//  Hello World AppleStyle
//
//  Created by sviluppatore2 on 20/05/13.
//  Copyright (c) 2013 sviluppatore2. All rights reserved.
//

#import "ViewController.h"
#import "NewViewViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    arrayValori = [[NSMutableArray alloc] initWithCapacity:0];
    [arrayValori addObject:@"PLZ SPARE ME"];
    [arrayValori addObject:@"NOWHERE!"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)premutoBottone:(id)sender {
    NSLog(@"OMG I CLICKED");
    //rottenApple.image = UIImage
    NewViewViewController * viewController2 = [[NewViewViewController alloc] initWithNibName:@"NewViewViewController" bundle: [NSBundle mainBundle]];
    viewController2.arrayV = arrayValori;
    
    [self.navigationController pushViewController:viewController2 animated:YES];
}

- (void) LabelUpdater:(id)sender { helloworldLabel.text = ChangingTextField.text; }

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    // Sintassi perversa per chiamare un metodo
    [ChangingTextField resignFirstResponder];
    return true;
}

@end
