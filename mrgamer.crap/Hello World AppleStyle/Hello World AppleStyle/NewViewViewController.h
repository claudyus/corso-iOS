//
//  NewViewViewController.h
//  Hello World AppleStyle
//
//  Created by sviluppatore2 on 20/05/13.
//  Copyright (c) 2013 sviluppatore2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewViewViewController : UIViewController {
    IBOutlet UITableView * tabella;
}

// proprieta' del controller, mutablearray
// non atomic - 
@property (nonatomic, strong) NSMutableArray * arrayV;

@end
