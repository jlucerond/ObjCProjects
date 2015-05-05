//
//  JLViewController.m
//  ChallengeMethods2
//
//  Created by Joe Lucero on 8/6/14.
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
    NSLog(@"%i", [self problemThree:(0)]);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) problemOne:(int)inputValue
{
    for(int i = inputValue; i>0; i--)
    {
        NSLog(@"%i", i);
    }
}

-(void) problemTwo:(int)firstNumber nextNumber:(int)secondNumber
{
    if(firstNumber>secondNumber)
    {
        for(int i = firstNumber; i>=secondNumber; i--)
        {
            NSLog(@"%i", i);
        }
    }
    
    else
    {
        for (int j = secondNumber; j>= firstNumber; j--)
        {
            NSLog(@"%i", j);
        }
    }
}

-(int) problemThree:(int)factorialInput
{
    int factorialAnswer = 1;
    for(int h= factorialInput; h>0; h--)
    {
        factorialAnswer = factorialAnswer * h;
        
    }
    return factorialAnswer;
}

@end
