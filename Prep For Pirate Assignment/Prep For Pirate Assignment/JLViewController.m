//
//  JLViewController.m
//  Prep For Pirate Assignment
//
//  Created by Joe Lucero on 6/2/14.
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
    NSString *firstString = @"First String";
    NSString *secondString = @"Second String";
    
    NSMutableArray *myMutableArray = [[NSMutableArray alloc] init];
    [myMutableArray addObject:firstString];
    [myMutableArray addObject:secondString];
    
    NSArray *myArray = [[NSArray alloc] initWithObjects:firstString, myMutableArray, secondString, nil];
    
    self.currentPoint = CGPointMake(3, 4);

    int x = 10;
    int y = 20;
    
    if (x==10){
        NSLog(@"x is 10");
        if (y==20)
        {
            NSLog(@"both are true");
        }
    
    }
    
    [self.myButton setTitle:@"Button Pressed" forState:UIControlStateNormal];
    self.myButton.hidden = NO;
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert!" message:@"You triggered the alert" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles: nil];
    [alertView show];
    
    self.awesomeClass = [[JLAwesomeClass alloc] init];
    
    NSString *testString= @"0";
    
    if (testString == nil){
        NSLog(@"what up");
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
