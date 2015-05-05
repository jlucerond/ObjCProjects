//
//  JLSpaceObject.h
//  Out of this World
//
//  Created by Joe Lucero on 8/22/14.
//
//

#import <Foundation/Foundation.h>

@interface JLSpaceObject : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic) float gravitationalForce;
@property (nonatomic) float diameter;
@property (nonatomic) float yearLength;
@property (nonatomic) float dayLength;
@property (nonatomic) float temperature;
@property (nonatomic) int numberOfMoons;
@property (strong, nonatomic) NSString *nickname;
@property (strong, nonatomic) NSString *interestingFact;

@property (strong, nonatomic) UIImage *spaceImage;

-(id) initWithData: (NSDictionary *)data andImage:(UIImage *)image;

@end
