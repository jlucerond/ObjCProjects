//
//  JLUserData.m
//  User Data Challenge Solution
//
//  Created by Joe Lucero on 8/22/14.
//
//

#import "JLUserData.h"

@implementation JLUserData

+(NSArray *) users
{
    
    NSDictionary *abby = @{USERNAME : @"abbyrules!", EMAIL : @"abby@gmail.com", PASSWORD : @"abbyrules", AGE : @20, PROFILEPICTURE : [UIImage imageNamed:@"abby.jpeg"]};
    NSDictionary *bob = @{USERNAME : @"bob1", EMAIL : @"bob1@gmail.com", PASSWORD : @"bobrules", AGE : @30, PROFILEPICTURE : [UIImage imageNamed:@"bob.jpeg"]};
    NSDictionary *cathy = @{USERNAME : @"cathyloveslife", EMAIL : @"CLL@gmail.com", PASSWORD : @"cathyrules", AGE : @40, PROFILEPICTURE : [UIImage imageNamed:@"cathy.jpeg"]};
    NSDictionary *dan = @{USERNAME : @"dan2014", EMAIL : @"dan_lastname@gmail.com", PASSWORD : @"danrules", AGE : @35, PROFILEPICTURE : [UIImage imageNamed:@"dan.jpeg"]};

    NSArray *thisArray = [[NSArray alloc] initWithObjects:abby, bob, cathy, dan, nil];
    return thisArray;
    
}

@end
