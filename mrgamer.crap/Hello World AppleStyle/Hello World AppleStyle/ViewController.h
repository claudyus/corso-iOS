//
//  ViewController.h
//  Hello World AppleStyle
//
//  Created by sviluppatore2 on 20/05/13.
//  Copyright (c) 2013 sviluppatore2. All rights reserved.
//

#import <UIKit/UIKit.h>

//UIViewController *CONFORME* a UITextFieldDelegate
@interface ViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UILabel * helloworldLabel;
    IBOutlet UIImageView * rottenApple;
    IBOutlet UITextField * ChangingTextField;
    
    //Awesome Array
    NSMutableArray * arrayValori;
}

- (IBAction)premutoBottone:(id)sender;
- (IBAction)LabelUpdater:(id)sender;

@end
