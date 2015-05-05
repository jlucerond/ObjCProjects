//
//  JLViewController.m
//  99 Sodas Challenge
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
    
    
    for (int x=99; x >= 1; x--)
    {
    
        NSLog(@"%i bottles of beer on the wall, take one down, pass it around, %i bottles of beer on the wall", x, x-1);
              
    
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
