//
//  JLViewController.m
//  User Data Challenge Solution
//
//  Created by Joe Lucero on 8/22/14.
//
//

#import "JLViewController.h"
#import "JLUserData.h"

@interface JLViewController ()

@end

@implementation JLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.users = [JLUserData users];
    NSLog(@"%@", self.users);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
