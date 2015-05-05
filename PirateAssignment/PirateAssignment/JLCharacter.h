//
//  JLCharacter.h
//  PirateAssignment
//
//  Created by Joe Lucero on 8/18/14.
//
//

#import <Foundation/Foundation.h>
#import "JLWeapon.h"
#import "JLArmor.h"

@interface JLCharacter : NSObject

@property (strong, nonatomic) JLArmor *armor;
@property (strong, nonatomic) JLWeapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
