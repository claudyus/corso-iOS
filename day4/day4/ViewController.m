//
//  ViewController.m
//  day4
//
//  Created by sviluppatore2 on 27/05/13.
//
//

#import "ViewController.h"
#import "KeyboardInMezzo.h"

@interface ViewController () {
    /* salvo le informazioni sul frame per ripristinarle QUA */
    CGRect frameTemp;
    
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *urlAddress = @"http://www.google.com";
    //Create a URL object.
    NSURL *url = [NSURL URLWithString:urlAddress];
   
    //URL Request Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    //Load the request in the UIWebView.
    [WebView1 loadRequest:requestObj];
    
    /* quando la tastiera viene visualizzata invoca il metodo KeyboardInMezzo */
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(KeyboardInMezzoA)
                                             name: UIKeyboardDidShowNotification
                                               object: nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(KeyboardInMezzoB)
                                                 name: UIKeyboardDidHideNotification
                                               object: nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ButtonFB:(id)sender {
    [WebView1 loadRequest: [NSURLRequest requestWithURL: [NSURL URLWithString: @"http://www.facebook.com"]]];
}

- (IBAction)ButtonIndietro:(id)sender {
    [WebView1 goBack];
}

@end
