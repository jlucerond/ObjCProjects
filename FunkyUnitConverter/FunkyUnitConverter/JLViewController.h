//
//  JLViewController.h
//  FunkyUnitConverter
//
//  Created by Joe Lucero on 5/15/14.
//
//

#import <UIKit/UIKit.h>

@interface JLViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *numberOfBillsLabel;
@property (strong, nonatomic) IBOutlet UITextField *numberOfBillsTextField;
- (IBAction)convertUnits:(UIButton *)sender;

@end
