//
//  JLViewController.m
//  Prep For Pirate Assignment2
//
//  Created by Joe Lucero on 8/7/14.
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
    
    NSString *firstString = @"first string";
    NSString *secondString = @"second string";
    
    NSArray *myArray = [[NSArray alloc] initWithObjects:firstString, secondString, nil];
//    NSLog(@"%@", myArray);
    
    NSMutableArray *myMutableArray = [[NSMutableArray alloc] init];
    [myMutableArray addObject:firstString];
    [myMutableArray addObject:myArray];
    [myMutableArray addObject:secondString];
//    NSLog(@"%@", myMutableArray);
    
    CGPoint myPoint = CGPointMake(3, 4);
//    NSLog(@"%f and %f", myPoint.x, myPoint.y);
    
    self.currentPoint = CGPointMake(5, 6);
//    NSLog(@"%f and %f", self.currentPoint.x, self.currentPoint.y);
    
    [self.myButton setTitle:@"Button Pressed" forState:UIControlStateNormal];
    self.myButton.hidden = NO;
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oh no!" message:@"help!" delegate:nil cancelButtonTitle:@"third thing" otherButtonTitles: nil];
    
    [alertView show];
    [alertView show];
    [alertView show];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
