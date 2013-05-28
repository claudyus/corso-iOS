//
//  ViewController.m
//  day4
//
//  Created by sviluppatore2 on 27/05/13.
//
//

#import "ViewController.h"


@interface ViewController (){
    CGRect frameTemp;
}

@end

@implementation ViewController
//syntetize delle property


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSString *urlAddress = @"http://www.repubblica.it";
    
    NSURL *url = [NSURL URLWithString:urlAddress];
    
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    [webView1 loadRequest:requestObj];
    
    NSString *urlAddress2 = @"http://www.facebook.com";
    
    NSURL *url2 = [NSURL URLWithString:urlAddress2];
    
    NSURLRequest *requestObj2 = [NSURLRequest requestWithURL:url2];
    
    [webView2 loadRequest:requestObj2];
    
    //notificar quando viene aperta la tastiera e nel momento in cui si apre sposta la webview.
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name: UIKeyboardDidShowNotification object:nil];
     
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHide:) name: UIKeyboardDidHideNotification object:nil];
     /*object potrebbe essere un qualsiasi parametro da passare al metodo es. [NSNumber numberWhitInt:1]*/
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)back1:(id)sender{
    [webView1 goBack];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.5];
    [UIView setAnimationDelay:0.0];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:webView1 cache:YES];
    [UIView commitAnimations];
}

- (IBAction)back2:(id)sender{
    [webView2 goBack];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.5];
    [UIView setAnimationDelay:0.0];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:webView2 cache:YES];
    [UIView commitAnimations];
}
- (IBAction)forward1:(id)sender{
    [webView1 goForward];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.5];
    [UIView setAnimationDelay:0.0];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:webView1 cache:YES];
    [UIView commitAnimations];
}

- (IBAction)forward2:(id)sender{
    [webView2 goForward];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.5];
    [UIView setAnimationDelay:0.0];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:webView2 cache:YES];
    [UIView commitAnimations];
}


//implementazione della classe delegata
-(IBAction)goToModal:(id)sender{
    ModalViewController *modal = [[ModalViewController alloc] initWithNibName:@"ModalViewController" bundle:nil];
    modal.delegate = self;
    [self.navigationController presentModalViewController:modal animated:YES];
    
}

-(void) tiPassoLaSquadraScelta:(NSString *)informazione{
    NSLog(@"grazie, mi hai passato %@", informazione);
    [self.navigationController dismissModalViewControllerAnimated:YES];
    
}

     //nel sender c'è la notifica
-(void)keyboardDidShow:(NSNotification*)notification{
    NSLog(@"keyboard show");
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.5];
    [UIView setAnimationDelay:0.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    
    frameTemp =  webView2.frame;
    webView2.frame = webView1.frame;
    [UIView commitAnimations];
    
}
-(void)keyboardDidHide:(NSNotification*)notification{
    NSLog(@"keyboard hide");
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.5];
    [UIView setAnimationDelay:0.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    
    webView2.frame = frameTemp;
    [UIView commitAnimations];
}
      
      

@end
