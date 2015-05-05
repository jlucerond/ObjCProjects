//
//  JLViewController.h
//  SumOfAllNumbers
//
//  Created by Joe Lucero on 8/5/14.
//
//

#import <UIKit/UIKit.h>

@interface JLViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *factorialValue;
@property (strong, nonatomic) IBOutlet UILabel *summationValue;
@property (strong, nonatomic) IBOutlet UITextField *numberInputByUser;

- (IBAction)convertButtonPressed:(UIButton *)sender;

@end
