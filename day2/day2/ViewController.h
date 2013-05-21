//
//  ViewController.h
//  day2
//
//  Created by sviluppatore1 on 21/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    /* outlet, binding tra elemento grafico e codice */
    IBOutlet UITableView *tableView;
    IBOutlet UIButton *fetchButton;
    
}

/* dichiaro dell'handler evento */
- (IBAction)fetchButton:(id)sender;

@property (nonatomic, strong) NSMutableArray *arrayTable;


/* modello */

@property (nonatomic, strong) NSString *titolo;
@property (nonatomic) NSInteger *idCorso;
@property (nonatomic) NSString *durata;


@end
