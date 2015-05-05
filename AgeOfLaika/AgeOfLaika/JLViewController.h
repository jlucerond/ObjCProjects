//
//  JLViewController.h
//  AgeOfLaika
//
//  Created by Joe Lucero on 5/15/14.
//
//

#import <UIKit/UIKit.h>

@interface JLViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *dogYearsLabel;
@property (strong, nonatomic) IBOutlet UITextField *dogYearsInput;
- (IBAction)dogYearsConvert:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UILabel *realDogYearsLabel;
- (IBAction)realDogYearsConvert:(UIButton *)sender;

@end
