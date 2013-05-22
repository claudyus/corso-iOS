//
//  ViewController.m
//  day2
//
//  Created by sviluppatore1 on 21/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import "ViewController.h"
#import "Corso.h"
#import "CustomCell.h"

@interface ViewController ()

@end

@implementation ViewController

/* sintetizziamo il set/get di arrayV per recuperarlo dall'altra view */
@synthesize arrayTable;
/* sintetizziamo le proprietà della classe h*/
@synthesize receiveData;
@synthesize connection;

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

    [arrayTable addObject: [[Corso alloc] popolate:@"test" andidCorso:1 anddurata:@"120min" andimmagine: [UIImage imageNamed:@"course.gif"] andattivo:YES]];
    [arrayTable addObject: [[Corso alloc] popolate:@"test2" andidCorso:2 anddurata:@"1h" andimmagine: [UIImage imageNamed:@"course.gif"] andattivo:YES]];
    [arrayTable addObject: [[Corso alloc] popolate:@"test3" andidCorso:3 anddurata:@"3h" andimmagine: [UIImage imageNamed:@"course.gif"] andattivo:NO]];
    [arrayTable addObject: [[Corso alloc] popolate:@"test4" andidCorso:4 anddurata:@"55min" andimmagine: [UIImage imageNamed:@"course.gif"] andattivo:NO]];
       
    /*scatena l'evento di ricaricamento dei dati dal source*/
    [tableView reloadData];
    
}

-(IBAction)restCall:(id)sender{
 
    //call to backend
    NSMutableData *data = [[NSMutableData alloc] init];
    self.receiveData = data;
    
    NSURL *url = [NSURL URLWithString:@"http://api.androidhive.info/contacts/"];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url]; //requestWithURL è un metodo di classe non va allocato!!
    
    NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:request delegate:self ];//initWithRequest è un metodo di istanza e VA allocato. Nelle chiamate il delegato si passa come parametro!!

    self.connection = conn;
    
    [conn start];
}

#pragma callback 
/* implemento i metodi del delegato NSURLConnectionDataDelegate */

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [self.receiveData appendData:data];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"%@",error);
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSString *htmlSTR = [[NSString alloc] initWithData:self.receiveData encoding:NSUTF8StringEncoding];
    NSLog(@"oggetto json: %@", htmlSTR);
    
   //WebViewController *controller = [[WebViewController alloc] initWithString:htmlSTR];
    
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
- (UITableViewCell *)tableView:(UITableView *)TableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CustomCell *cell = [TableView dequeueReusableCellWithIdentifier:@"CustomCell"];
    
    if (cell == nil){
        cell = [CustomCell getCell: [arrayTable objectAtIndex:indexPath.row]];
                 //] initWithFrame:CGRectZero reuseIdentifier:@"CustomCell"] ;
        //setta lo stile con cui vengono selezionate le righe
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    //inseriamo nella cella l'elemento della lista corrispondente
    Corso *corso = [arrayTable objectAtIndex:indexPath.row];
    cell.titolo.text = corso.titolo;
    cell.durata.text = corso.durata;
    cell.idCorso.text = [NSString stringWithFormat: @"id: %d", corso.idCorso ];
    cell.immagine.image = corso.immagine;
    cell.attivo.on = corso.attivo;

    return cell;
}

/*delegate della selezione */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    /* stampa la linea selezionata*/
    NSLog(@"selezionato %d", indexPath.row);
}
@end
