//
//  ViewController.m
//  day2
//
//  Created by sviluppatore1 on 21/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import "ViewController.h"
#import "Corso.h"

@interface ViewController ()

@end

@implementation ViewController

/* sintetizziamo il set/get di arrayV per recuperarlo dall'altra view */
@synthesize arrayTable;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    arrayTable = [[NSMutableArray alloc] initWithCapacity:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma gestione callback pulsanti
/* implementazione dell' azione */
- (IBAction)fetchButton:(id)sender{
    
    /* uso del log */
    NSLog(@"premuto il bottone");

    UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:@"You should not pass!!" message:@"La tabella sta per essere popolata!" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alertView show];

    [arrayTable addObject: [[Corso alloc] popolate:@"test" andidCorso:1 anddurata:@"120min"]];
    [arrayTable addObject: [[Corso alloc] popolate:@"test2" andidCorso:2 anddurata:@"1h"]];
    [arrayTable addObject: [[Corso alloc] popolate:@"test3" andidCorso:3 anddurata:@"3h"]];
    [arrayTable addObject: [[Corso alloc] popolate:@"test4" andidCorso:4 anddurata:@"55min"]];
       
    /*scatena l'evento di ricaricamento dei dati dal source*/
    [tableView reloadData];
    
}


#pragma callback della tabella
/* quante sezioni ci sono nella tabella ?? */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

// Setta il numero di righe della tabella
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [arrayTable count];
}

// Setta il contenuto delle varie celle
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:@"cellID"] ;
        //setta lo stile con cui vengono selezionate le righe
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    //inseriamo nella cella l'elemento della lista corrispondente
    Corso *corso = [arrayTable objectAtIndex:indexPath.row];
    cell.textLabel.text = corso.titolo;
    return cell;
}

/*delegate della selezione */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    /* stampa la linea selezionata*/
    NSLog(@"selezionato %d", indexPath.row);
}
@end
