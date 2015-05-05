//
//  JLTile.h
//  PirateAssignment
//
//  Created by Joe Lucero on 6/5/14.
//
//

#import <Foundation/Foundation.h>
#import "JLArmor.h"
#import "JLWeapon.h"

@interface JLTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundPicture;
@property (strong, nonatomic) NSString *actionButtonText;
@property (strong, nonatomic) JLWeapon *weapon;
@property (strong, nonatomic) JLArmor *armor;
@property (nonatomic) int healthEffect;

@end
