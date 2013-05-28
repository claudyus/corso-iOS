//
//  ViewController.h
//  day4
//
//  Created by sviluppatore2 on 27/05/13.
//
//

#import <UIKit/UIKit.h>
#import "ModalViewController.h"

@interface ViewController : UIViewController <UIWebViewDelegate,modalDelegate>
{
    IBOutlet UIWebView *webView1, *webView2;
    //IBOutlet UIWebView *mySecondWebView;
    IBOutlet UIButton *btnBack1, *btnBack2;
    IBOutlet UIToolbar *myBar;
}

-(IBAction)back1:(id)sender;
-(IBAction)back2:(id)sender;
-(IBAction)forward1:(id)sender;
-(IBAction)forward2:(id)sender;
-(IBAction)goToModal:(id)sender;

@end
