//
//  DetailViewController.h
//  day4
//
//  Created by sviluppatore1 on 27/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
