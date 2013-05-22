//
//  ViewController.h
//  day2
//
//  Created by sviluppatore1 on 21/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Corso.h"

@interface ViewController : UIViewController <
    NSURLConnectionDelegate, NSURLConnectionDataDelegate> {  /* ci conformiamo ai protocolli */
    /* outlet, binding tra elemento grafico e codice */
    IBOutlet UITableView *tableView;
    IBOutlet UIButton *fetchButton;
    
}

/* dichiarazione dell'handler evento */
- (IBAction)fetchButton:(id)sender;

/* dichiarazione dell'handler evento per la richiesta REST*/
- (IBAction)restCall:(id)sender;

@property (nonatomic, strong) NSMutableArray *arrayTable;


/* proprietà connection e data per la chiamata rest */
@property (nonatomic, strong) NSURLConnection *connection;
@property (nonatomic, strong) NSMutableData  *receiveData;


@end

