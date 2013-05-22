//
//  ViewController.h
//  day2
//
//  Created by sviluppatore1 on 21/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Corso.h"

@interface ViewController : UIViewController
    <NSURLConnectionDelegate, NSURLConnectionDataDelegate> {
        /*conforme al protocollo NSURL per ricevere la delegate*/
                                 
    /* outlet, binding tra elemento grafico e codice */
    IBOutlet UITableView *tableView;
    IBOutlet UIButton *fetchButton;
    
}

/* dichiaro dell'handler evento */
- (IBAction)fetchButton:(id)sender;

@property (nonatomic, strong) NSMutableArray *arrayTable;

/* proprietà per la call rest*/
/* retain è simile a static+const */
/* dalla versione 6.0 di iOS è chiamata strong (vedi sopra) */
@property (retain, nonatomic) NSURLConnection *connection;
@property (nonatomic, retain) NSMutableData *recvData;

@end

