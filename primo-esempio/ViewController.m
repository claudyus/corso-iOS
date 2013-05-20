//
//  ViewController.m
//  primo-esempio
//
//  Created by sviluppatore1 on 20/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import "ViewController.h"
/*importiamo il .h dell'altra vista per poterla richiamare (pushare)*/
#import "ViewTableViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    myLabel.textColor = [UIColor yellowColor];
    
    
    /* sintassi CRAZY [classe metodo]  */
    arraylocale = [[NSMutableArray alloc] initWithCapacity:(0)];
    
    
    /* inizializzo alcuni elementi dell'arrray */
    [arraylocale addObject:(@"primo")];
    [arraylocale addObject:(@"secondo")];
    //[arraylocale addObject:([NSInteger 0])];
    
    NSLog(@"Numero elementi: %d", [arraylocale count]);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/* implementazione dell' azione */
- (IBAction)premutoBottone:(id)sender{
    
    /* uso del log */
    NSLog(@"premuto il bottone");
    
    /* richiamiamo un'altra vista*/
    ViewTableViewController  *viewDue = [[ViewTableViewController alloc] initWithNibName:@"ViewTableViewController" bundle: [NSBundle mainBundle]];
    
    /* assegno alla view tabella i dati locali presenti nell'array */
    viewDue.arrayView = arraylocale ;
    
    /*pusho la vistaDue sullo stack */
    [self.navigationController pushViewController:viewDue animated:YES];
    
}

- (IBAction)sliderMove:(id)sender {
    
    NSLog(@"%f", mySlider.value);
    
   // myLabel.backgroundColor = [UIColor ]
    
}

/*metodo delegato di textfiled che viene chiamato dal SO essendo questa classe
 * conforme al protocollo*
 * Vedi .h*/
- (void) textFieldDidBeginEditing:(UITextField *)textField {
    NSLog(@"BeginEditing");
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    myLabel.text = mytext.text;
    return YES;
}


/* se sulla tastiera viene premuto return viene chiamata questa funzione; 
 * per chiudere la tastiera si da resignFi*/
- (BOOL) textFieldShouldReturn:(UITextField *)textField  {
    [textField resignFirstResponder];
    
//    myLabel.text = mytext.text;

    /* restitisce un booleano -> YES LOLLLLLLLL*/
    return YES;
    
}


@end
