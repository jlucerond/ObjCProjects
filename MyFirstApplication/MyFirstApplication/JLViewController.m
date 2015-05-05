//
//  JLViewController.m
//  MyFirstApplication
//
//  Created by Joe Lucero on 5/13/14.
//
//

#import "JLViewController.h"

@interface JLViewController ()

@end

@implementation JLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender
{
    self.titleLabel.text = self.textField.text;
    [self.textField resignFirstResponder];
}
@end
