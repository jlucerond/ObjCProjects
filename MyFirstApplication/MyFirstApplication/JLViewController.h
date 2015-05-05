//
//  JLViewController.h
//  MyFirstApplication
//
//  Created by Joe Lucero on 5/13/14.
//
//

#import <UIKit/UIKit.h>

@interface JLViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

@property (strong, nonatomic) IBOutlet UITextField *textField;

- (IBAction)buttonPressed:(UIButton *)sender;

@end
