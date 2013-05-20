//
//  ViewTableViewController.h
//  primo-esempio
//
//  Created by sviluppatore1 on 20/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewTableViewController : UIViewController
{
    IBOutlet UITableView *tableView;
    
    
}

/* definiamo che la view non atomica TODO 
 * -strong
 * - aggiungiamo anche che ha come proprietà un arrayV mutabile 
 */
@property (nonatomic, strong) NSMutableArray *arrayView;

@end
