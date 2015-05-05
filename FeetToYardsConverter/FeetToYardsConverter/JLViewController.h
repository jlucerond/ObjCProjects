//
//  JLViewController.h
//  FeetToYardsConverter
//
//  Created by Joe Lucero on 8/4/14.
//
//

#import <UIKit/UIKit.h>

@interface JLViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *feetOutputLabel;
@property (strong, nonatomic) IBOutlet UITextField *metersInputLabel;
- (IBAction)convertMetersToFeet:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UILabel *metersOutputLabel;
@property (strong, nonatomic) IBOutlet UITextField *feetInputLabel;
- (IBAction)convertFeetToMeters:(UIButton *)sender;

@end
