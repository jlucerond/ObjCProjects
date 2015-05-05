//
//  JLViewController.h
//  MansBestFriend2
//
//  Created by Joe Lucero on 8/5/14.
//
//

#import <UIKit/UIKit.h>
#import "JLDog.h"
#import "JLPuppy.h"

@interface JLViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *myNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *myBreedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;

@property (nonatomic) int oldNumber;

-(void) printHelloWorld;
- (IBAction)nextDogPressed:(UIBarButtonItem *)sender;

@end
