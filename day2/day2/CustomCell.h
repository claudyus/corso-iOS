//
//  CustomCell.h
//  day2
//
//  Created by sviluppatore1 on 21/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Corso.h"

@interface CustomCell : UITableViewCell{
        /* leave */
    }

    + (id) getCell: (Corso*) corso;

    @property (nonatomic, retain ) IBOutlet UILabel *titolo;
    @property (nonatomic, retain ) IBOutlet UILabel *idCorso;
    @property (nonatomic, retain ) IBOutlet UILabel *durata;

@end
