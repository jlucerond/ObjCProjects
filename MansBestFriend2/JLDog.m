//
//  JLDog.m
//  MansBestFriend2
//
//  Created by Joe Lucero on 8/5/14.
//
//

#import "JLDog.h"

@implementation JLDog

-(void) bark
{
    NSLog(@"Woof Woof");
    self.name = @"Rodger";
}

-(void) barkANumberOfTimes:(int)numberOfTimes
{
    for (int x=1; x<= numberOfTimes; x++)
    {
        [self bark];
    }
}

-(void) changeBreedToWerewolf
{
    self.breed = @"Werewolf";
}

-(void) barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if(isLoud==NO)
    {
        [self barkANumberOfTimes:(numberOfTimes)];
    }
    else
    {
        for (int i = 1; i<=numberOfTimes; i++)
        {
            NSLog(@"WOOF WOOF");
        }
    }
}

-(int) convertToDogYears: (int)humanYears
{
    int dogYears = humanYears*7;
    return dogYears;
}

@end
