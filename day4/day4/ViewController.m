//
//  ViewController.m
//  day4
//
//  Created by sviluppatore2 on 27/05/13.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *urlAddress = @"http://www.google.com";
    
    //Create a URL object.
    NSURL *url = [NSURL URLWithString:urlAddress];
    
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    //Load the request in the UIWebView.
    [WebView1 loadRequest:requestObj];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)ButtonFb_Up:(id)sender {
    /* carica FB home*/
    
    NSString *urlAddress = @"http://www.facebook.com";
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [WebView1 loadRequest:requestObj];
}

- (IBAction)ButtonIndietro:(id)sender {
    [WebView1 goBack];
}
@end
