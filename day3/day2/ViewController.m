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


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    jsonParser = [[SBJsonParser alloc] init];
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

    /* make the real rest call */
    NSMutableData *data = [[NSMutableData alloc] init ];
    self.recvData = data;
    
    /* configura l'url e avvia la connessione*/
    NSURL *url = [NSURL URLWithString:@"http://localhost:3000/list/course"];
    /*vedi la cartella server-nodejs per la configurazione */
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate: self];
    self.connection = connection;
    [connection start];

    /*scatena l'evento di ricaricamento dei dati dal source*/
    //il reload andrà spostato -- [tableView reloadData];
    
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

#pragma callback della chiamata REST

/*delegato chiamato per ogni pacchetto associato alla connessione */
-(void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    
    /* riceviamo i dati dal server e lo appendiamo perchè rimontare i pacchetti frammentati */
    [self.recvData appendData:data];
}

- (void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"Errore nella connessione REST: %@", error);
}

/* delegato chiamato alla chiusura della connessione */
- (void) connectionDidFinishLoading:(NSURLConnection *)connection  {
    /* trasforma l'NSData in NSString */
    NSString *respData = [[NSString alloc] initWithData:self.recvData encoding:NSUTF8StringEncoding ];
    
    NSLog(@"%@", respData);

    NSMutableArray *arrayCorso = (NSMutableArray *) [jsonParser objectWithData:self.recvData];

    //NSArray *arrayContact = [dictContact objectForKey:@"contacts"];

    [arrayTable removeAllObjects ];

    int i = 0;

    for (NSDictionary *corso in arrayCorso ) {

        Corso *localCorso = [[Corso alloc] init];
        //cors.idCorso = [corso ];
        localCorso.titolo = [corso objectForKey:@"titolo"];
        localCorso.durata = [NSString stringWithFormat:@"%l", [corso objectForKey:@"durata"]];

        localCorso.idCorso = i++;

        [arrayTable addObject: localCorso];

    }

    [tableView reloadData];
}

@end
