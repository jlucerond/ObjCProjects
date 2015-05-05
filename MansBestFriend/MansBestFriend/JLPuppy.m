//
//  JLPuppy.m
//  MansBestFriend
//
//  Created by Joe Lucero on 5/27/14.
//  Copyright (c) 2014 Joe Lucero. All rights reserved.
//

#import "JLPuppy.h"

@implementation JLPuppy

-(void)givePuppyEyes
{
    NSLog(@":(");
}

-(void) bark
{
   [super bark];
    NSLog(@"whimper whimper");
    [self givePuppyEyes];
}

@end
