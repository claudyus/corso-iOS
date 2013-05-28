//
//  ModalViewController.h
//  day4
//
//  Created by Developer4 on 5/27/13.
//
//

#import <UIKit/UIKit.h>


@protocol modalDelegate <NSObject>

-(void) tiPassoLaSquadraScelta: (NSString*) informazione;

@end

@interface ModalViewController : UIViewController
{
    NSString *info;
    IBOutlet UIPickerView *picker;
    NSMutableArray *arrayInfo;
    IBOutlet UILabel *scelta;
    
}

-(IBAction)premutoBack:(id)sender;

//i protocolli sono i assign perchè vengono assegnati a chi lo delega
@property (nonatomic,assign) id<modalDelegate>delegate;

@end
