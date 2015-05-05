//
//  JLDog.h
//  MansBestFriend
//
//  Created by Joe Lucero on 5/16/14.
//  Copyright (c) 2014 Joe Lucero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JLDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *name;

-(void)bark;
-(void)barkANumberOfTimes: (int)numberOfTimes;
-(void)changeBreedToWerewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(int)ageInDogYearsFromAge:(int)regularAge;

@end
