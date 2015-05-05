//
//  JLViewController.m
//  AgeOfLaika
//
//  Created by Joe Lucero on 5/15/14.
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

- (IBAction)dogYearsConvert:(UIButton *)sender
{
    int humanAge = [self.dogYearsInput.text intValue];
    int dogAge = humanAge * 7;
    self.dogYearsLabel.text = [NSString stringWithFormat:@"%i", dogAge];
    

    [self.dogYearsInput resignFirstResponder];
}

- (IBAction)realDogYearsConvert:(UIButton *)sender
{
    int humanAge = [self.dogYearsInput.text intValue];
    int dogAge;
    if (humanAge <= 2){dogAge = humanAge * 10.5;}
    else {dogAge = 21 + (humanAge-2)*4;}
    self.realDogYearsLabel.text = [NSString stringWithFormat:@"%i", dogAge];
    
    [self.dogYearsInput resignFirstResponder];

}
@end
