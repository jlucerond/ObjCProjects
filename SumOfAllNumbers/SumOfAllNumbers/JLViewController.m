//
//  JLViewController.m
//  SumOfAllNumbers
//
//  Created by Joe Lucero on 8/5/14.
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

- (IBAction)convertButtonPressed:(UIButton *)sender
{
    int n = [self.numberInputByUser.text integerValue];
    int factorial = 1;
    for (int x=1; x<=n; x++)
    {
        factorial = factorial * x;
    };
    
    if(n<20){
    NSLog(@"%i", factorial);
    self.factorialValue.text = [NSString stringWithFormat:@"%i", factorial];
    }
    else
    {
        self.factorialValue.text = [NSString stringWithFormat:@"too big!"];
    }
    
    int summation = 0;
    for (int x=0; x<=n; x++)
    {
        summation = summation + x;
    }
    NSLog(@"%i", summation);
    self.summationValue.text = [NSString stringWithFormat:@"%i", summation];
    
    [self.numberInputByUser resignFirstResponder];
}
@end
