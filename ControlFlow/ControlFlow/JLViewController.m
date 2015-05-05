//
//  JLViewController.m
//  ControlFlow
//
//  Created by Joe Lucero on 5/16/14.
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
    
    int truckSpeed = 45;
    int lamboSpeed = 120;
    int carSpeed = 90;
    int mySpeed;
    
    // < > <= >= != == || &&
    
    if (mySpeed < 70) {NSLog(@"Keep Cruising");}
    else if (mySpeed > 55 && mySpeed <= 90) {NSLog(@"Cruising Down Highway 66");}
    else {NSLog(@"Slow Down");}
    
    BOOL isTelevisionOn = NO;
    
    if(isTelevisionOn != YES)
    {NSLog(@"We should take a break");}
    
    else {NSLog(@"great job, keep up the hard work");}
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
