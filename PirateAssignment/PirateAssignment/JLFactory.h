//
//  JLFactory.h
//  PirateAssignment
//
//  Created by Joe Lucero on 6/5/14.
//
//

#import <Foundation/Foundation.h>
#import "JLCharacter.h"

@interface JLFactory : NSObject

-(NSArray *) tiles;
-(JLCharacter *) character;

@end
