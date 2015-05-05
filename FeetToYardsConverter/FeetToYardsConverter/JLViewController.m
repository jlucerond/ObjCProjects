//
//  JLViewController.m
//  FeetToYardsConverter
//
//  Created by Joe Lucero on 8/4/14.
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



- (IBAction)convertMetersToFeet:(UIButton *)sender
{
    float numOfMeters = [self.metersInputLabel.text floatValue];
    float answer = numOfMeters*3.28084;
    self.feetOutputLabel.text = [NSString stringWithFormat: @"%f", answer];
    [self.metersInputLabel resignFirstResponder];
}

- (IBAction)convertFeetToMeters:(UIButton *)sender
{
    float numOfYards = [self.feetInputLabel.text floatValue];
    float answer = numOfYards*.3048;
    self.metersOutputLabel.text = [NSString stringWithFormat:@"%f", answer];
    [self.feetInputLabel resignFirstResponder];
    
}
@end
