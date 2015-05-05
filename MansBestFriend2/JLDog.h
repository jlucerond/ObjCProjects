//
//  JLDog.h
//  MansBestFriend2
//
//  Created by Joe Lucero on 8/5/14.
//
//

#import <Foundation/Foundation.h>

@interface JLDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *breed;
@property (nonatomic, strong) UIImage *image;

-(void) bark;
-(void) barkANumberOfTimes:(int)numberOfTimes;
-(void) barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(void) changeBreedToWerewolf;
-(int) convertToDogYears: (int)humanYears;

@end
