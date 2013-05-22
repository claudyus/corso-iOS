//
//  CustomCell.m
//  day2
//
//  Created by sviluppatore1 on 21/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (id) getCell: (Corso*) corso {
    /* implementzione del metodo getCell dichiarato nell'interfaccia h */
    CustomCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil ] objectAtIndex:0];

    return cell;
}


@end
