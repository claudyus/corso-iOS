//
//  ModalViewController.m
//  day4
//
//  Created by Developer4 on 5/27/13.
//
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

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
    info = @"info da passare";
    
    arrayInfo = [[NSMutableArray alloc] initWithCapacity:0];
    [arrayInfo addObject:@"Lazio"];
    [arrayInfo addObject:@"Roma"];
    [arrayInfo addObject:@"Milan"];
    [arrayInfo addObject:@"Inter"];
    [arrayInfo addObject:@"Fiorentina"];
    [arrayInfo addObject:@"Juventus"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)premutoBack:(id)sender{
    //info = @"premuto back";
    [self.delegate tiPassoLaSquadraScelta:info];
}

//#pragma delegate pickerview

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *) thePickerView{
    return 1;
}

-(NSInteger) pickerView:(UIPickerView *)thePickerView
    numberOfRowsInComponent:(NSInteger)component{
    return [arrayInfo count];
}

-(NSString *) pickerView:(UIPickerView *)thePickerView
             titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [arrayInfo objectAtIndex:row];
}

-(void) pickerView: (UIPickerView *)thePickerView
      didSelectRow:(NSInteger)row inComponent:(NSInteger)component   {
    NSLog(@"selected color: %@, index of selected %i", [arrayInfo objectAtIndex:row], row );
    
    info = [arrayInfo objectAtIndex:row];
    scelta.text = info;
}

@end
