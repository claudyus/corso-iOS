//
//  KeyBoardInMezzo.m
//  day4
//
//  Created by sviluppatore1 on 27/05/13.
//
//

#import "KeyBoardInMezzo.h"
#import "ViewController.h"

@implementation KeyBoardInMezzo

/* actiontype è 1 se la tastiera è aperta
 *              0 se la tastiera viene chiusa
 */
+ (void) KeyboardInMezzo:(id) sender andAction: (Boolean) action_type {
    
    NSLog(@"Valore dell'action : %c", action_type);
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.5];
    [UIView setAnimationDelay:0.2];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    [UIView setAnimationDelegate:self];
    
    if (action_type == true) {
        frameTemp = ButtonIndietro.frame;
        ButtonIndietro.frame  = LabelSwap.frame;
        LabelSwap.frame = frameTemp;
        
    } else {
        frameTemp = LabelSwap.frame;
        LabelSwap.frame  = ButtonIndietro.frame;
        ButtonIndietro.frame = frameTemp;
        
    }
    [UIView commitAnimations];
}

- (void) KeyBoardInMezzoA:(id) sender {
    [self KeyBoardInMezzo:sender andAction: true];
}

- (void) KeyBoardInMezzoB:(id) sender {
    [self KeyBoardInMezzo:sender andAction: false];
}

@end
