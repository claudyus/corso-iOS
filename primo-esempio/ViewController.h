//
//  ViewController.h
//  primo-esempio
//
//  Created by sviluppatore1 on 20/05/13.
//  Copyright (c) 2013 sviluppatore1. All rights reserved.
//

#import <UIKit/UIKit.h>

/* questa interfaccia è conforme al protocollo UITextFieldDelegate*/
@interface ViewController : UIViewController <UITextFieldDelegate> {
    
    /* collegamento tra una instalza della classe e l'elemento grafico */
    IBOutlet UILabel *myLabel;
    IBOutlet UISlider *mySlider;
    IBOutlet UITextField *mytext;
    
    /*dichiariamo un'array mutabile
     * per cui a dimensione variabili diverso da NSArray che è fisso */
    NSMutableArray *arraylocale;

}

/* dichiaro un'azione */
- (IBAction)premutoBottone:(id)sender;
- (IBAction)sliderMove:(id)sender;


@end
