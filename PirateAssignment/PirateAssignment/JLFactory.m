//
//  JLFactory.m
//  PirateAssignment
//
//  Created by Joe Lucero on 6/5/14.
//
//

#import "JLFactory.h"
#import "JLTile.h"

@implementation JLFactory

-(NSArray *) tiles
{
    JLTile *tile1 = [[JLTile alloc] init];
    tile1.story = @"Captain, we need a fearless leader such as yourself to undertake a voyage. You must stop the evil pirate Boss. Would you like a blunted sword to get started?";
    tile1.actionButtonText = @"Take Blunted Sword";
    tile1.backgroundPicture = [UIImage imageNamed:@"PirateStart.jpg"];
    JLWeapon *bluntedSword = [[JLWeapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    
    
    JLTile *tile2 = [[JLTile alloc] init];
    tile2.story = @"You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile2.actionButtonText = @"Take Armor";
    tile2.backgroundPicture = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    JLArmor *steelArmor = [[JLArmor alloc] init];
    steelArmor.name = @"Steel armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;

    JLTile *tile3 = [[JLTile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.actionButtonText = @"Stop at the Dock";
    tile3.backgroundPicture = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    
    NSArray *column1 = [[NSArray alloc] initWithObjects:tile1, tile2, tile3, nil];

    JLTile *tile4 = [[JLTile alloc] init];
    tile4.story = @"You have found a parrot. This can be used in your armor slot. Parrots are a great defender and are fiercly loyal to their captain!";
    tile4.actionButtonText = @"Adpot Parrot";
    tile4.backgroundPicture = [UIImage imageNamed:@"PirateParrot.jpg"];
    JLArmor *parrotArmor = [[JLArmor alloc] init];
    parrotArmor.name = @"Parrot";
    parrotArmor.health = 20;
    tile4.armor = parrotArmor;
    
    JLTile *tile5 = [[JLTile alloc] init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.actionButtonText = @"Use Pistol";
    tile5.backgroundPicture = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    JLWeapon *pistolWeapon = [[JLWeapon alloc] init];
    pistolWeapon.name= @"Pistol";
    pistolWeapon.damage = 17;
    tile5.weapon = pistolWeapon;
    
    JLTile *tile6 = [[JLTile alloc] init];
    tile6.story = @"You have been captured by pirates and are ordered to walk the plank.";
    tile6.actionButtonText = @"Show No Fear";
    tile6.backgroundPicture = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    
    NSArray *column2 = [[NSArray alloc] initWithObjects:tile4, tile5, tile6, nil];
    
    JLTile *tile7 = [[JLTile alloc] init];
    tile7.story = @"You have sighted a pirate battle off the coast. Should we intervene?";
    tile7.actionButtonText = @"Fight";
    tile7.backgroundPicture = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    
    JLTile *tile8 = [[JLTile alloc] init];
    tile8.story = @"The legend of the deep. The mighty kraken appears.";
    tile8.actionButtonText = @"Abandon Ship";
    tile8.backgroundPicture = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;

    JLTile *tile9 = [[JLTile alloc] init];
    tile9.story = @"You have stumbled upon a hidden cave of pirate treasures.";
    tile9.actionButtonText = @"Take Treasure";
    tile9.backgroundPicture = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    
    NSArray *column3 = [[NSArray alloc] initWithObjects:tile7, tile8, tile9, nil];
    
    JLTile *tile10 = [[JLTile alloc] init];
    tile10.story = @"A group of pirates attempts to board your ship.";
    tile10.actionButtonText = @"Repel the Invaders";
    tile10.backgroundPicture = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -5;
    
    JLTile *tile11 = [[JLTile alloc] init];
    tile11.story = @"In the deep of the sea many things live an many things can be found. Will the fortune bring help or ruin?";
    tile11.actionButtonText = @"Swim Deeper";
    tile11.backgroundPicture = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    
    JLTile *tile12 = [[JLTile alloc] init];
    tile12.story = @"Your final faceoff with the fearsome pirate boss!";
    tile12.actionButtonText = @"Fight";
    tile12.backgroundPicture = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;

    
    NSArray *column4 = [[NSArray alloc] initWithObjects:tile10, tile11, tile12, nil];
    
    NSArray *allTiles = [[NSArray alloc] initWithObjects:column1, column2, column3, column4, nil];
    
    return allTiles;
    
}

-(JLCharacter *) character
{
    JLArmor *armor = [[JLArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    JLWeapon *weapon = [[JLWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    
    JLCharacter *character= [[JLCharacter alloc] init];
    character.health = 100;
    character.armor = armor;
    character.weapon = weapon;

    return character;
}

@end
