//
//  NewViewViewController.m
//  Hello World AppleStyle
//
//  Created by sviluppatore2 on 20/05/13.
//  Copyright (c) 2013 sviluppatore2. All rights reserved.
//

#import "NewViewViewController.h"

@interface NewViewViewController ()

@end

@implementation NewViewViewController;
@synthesize arrayV;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

// Setta il numero di righe della tabella .
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [arrayV count];
}

// Setta il contenuto delle varie celle
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:@"cellID"] ;
        //setta lo stile con cui vengono selezionate le righe
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    //inseriamo nella cello l'elemento della lista corrispondente
    cell.textLabel.text = [arrayV objectAtIndex:indexPath.row];
    return cell;
}

@end
