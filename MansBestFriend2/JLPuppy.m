//
//  JLPuppy.m
//  MansBestFriend2
//
//  Created by Joe Lucero on 8/7/14.
//
//

#import "JLPuppy.h"

@implementation JLPuppy

-(void)givePuppyEyes
{
    NSLog(@"sad");
}

-(void)bark
{
    [super bark];
    [self givePuppyEyes];
    NSLog(@"I'm a puppy");
    
}

@end
