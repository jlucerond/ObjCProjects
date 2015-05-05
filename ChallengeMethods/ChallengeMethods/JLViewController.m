//
//  JLViewController.m
//  ChallengeMethods
//
//  Created by Joe Lucero on 5/19/14.
//
//

#import "JLViewController.h"

@interface JLViewController ()

@end

@implementation JLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self countDown:7];
    [self listBetweenIntegers:19 andSecondInteger:31];
    [self factorial:6];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)countDown: (int)numberEntered
{
    if (numberEntered > 0)
    {
        for (int i = numberEntered; i >=1; i --)
        {
            NSLog(@"%i", i);
        }
    }
}

-(void)listBetweenIntegers: (int)firstInteger andSecondInteger: (int)secondInteger
//{
//    if (firstInteger == secondInteger)
//    {
//    NSLog(@"%i", firstInteger);
//    }
//    
//    else if (firstInteger > secondInteger)
//    {
//        for (int i = firstInteger; i >= secondInteger; i--)
//            {
//            NSLog(@"%i", i);
//            }
//    }
//    
//    else
//    {
//        for (int x = secondInteger; x >= firstInteger; x--)
//            {
//            NSLog(@"%i", x);
//            }
//    
//    }
//}
{
    int a;
    int b;
    
if (firstInteger >= secondInteger)
    {
         a = firstInteger;
         b = secondInteger;
    }

else
    {
        a = secondInteger;
        b = firstInteger;
    }
    
    for (int x = a; x>=b; x--) {
        NSLog(@"%i", x);
    }
}

-(int) factorial: (int) f
{
    int h = 1;
    for (int g = f; g > 0; g--)
    {
        h = g * h;
    }
    f = h;
    NSLog(@"%i", f);

    return f;
}

@end
