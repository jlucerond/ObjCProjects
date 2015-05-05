//
//  JLViewController.m
//  ForLoops
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

//    for (int meditationHours = 1; meditationHours <= 20; meditationHours++)
//    {
//    
//        NSLog(@"I am getting more enlightened");
//    
//    }
    
    int piecesOfWheat = 1;
    for (int x = 2; x <=30; x++)
    {
        
        piecesOfWheat = piecesOfWheat * 2;
        NSLog(@"on tile %i, there are %i pieces of wheat", x, piecesOfWheat);
    
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
