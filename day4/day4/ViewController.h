//
//  ViewController.h
//  day4
//
//  Created by sviluppatore2 on 27/05/13.
//
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController {
    IBOutlet UIWebView *WebView1;
    IBOutlet UIButton *ButtonFb;
    __weak IBOutlet UIButton *ButtonIndietro;
}

- (IBAction)ButtonFb_Up:(id)sender;
- (IBAction)ButtonIndietro:(id)sender;

@end
