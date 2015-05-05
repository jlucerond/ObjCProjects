//
//  JLViewController.m
//  PirateAssignment
//
//  Created by Joe Lucero on 6/3/14.
//
//

#import "JLViewController.h"
#import "JLTile.h"
#import "JLFactory.h"

@interface JLViewController ()

@end

@implementation JLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    JLFactory *factory = [[JLFactory alloc] init];
    self.tiles = [factory tiles];
    self.character = [factory character];
    self.currentPoint = CGPointMake(0, 0);
    [self updateCharacterStatsForArmor:nil withWeapons:nil withHealthEffect:0];
    [self updateTile];
    [self updateButtons];
    
    self.bossCharacter = [factory character];
    self.bossCharacter.health = 100;
        
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark- Method Helpers
- (void)updateTile
{
    JLTile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x]objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tileModel.story;
    self.backgroundImageView.image = tileModel.backgroundPicture;
    [self.actionButtonText setTitle:tileModel.actionButtonText forState:UIControlStateNormal];
    self.healthLabel.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.damageLabel.text = [NSString stringWithFormat:@"%i", self.character.weapon.damage];
    self.weaponLabel.text = self.character.weapon.name;
    self.armorLabel.text = self.character.armor.name;
    
}

-(void) updateButtons
{
    self.westButton.hidden = [self shouldIHideThisButton:CGPointMake(self.currentPoint.x-1, self.currentPoint.y)];
    self.eastButton.hidden = [self shouldIHideThisButton:CGPointMake(self.currentPoint.x+1, self.currentPoint.y)];
    self.southButton.hidden = [self shouldIHideThisButton:CGPointMake(self.currentPoint.x, self.currentPoint.y-1)];
    self.northButton.hidden = [self shouldIHideThisButton:CGPointMake(self.currentPoint.x, self.currentPoint.y+1)];
    self.actionButtonText.hidden = NO;

}

-(BOOL)shouldIHideThisButton: (CGPoint)point
{
    if (point.y < 0 || point.y > 2)
    {
        return YES;
    }
    else if (point.x < 0 || point.x > 3)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

-(void) updateCharacterStatsForArmor: (JLArmor *)newArmor withWeapons:(JLWeapon*) newWeapon withHealthEffect:(int)newHealthEffect
{
    if (newArmor != nil)
    {
        self.character.health = self.character.health - self.character.armor.health + newArmor.health;
        self.character.armor = newArmor;

    }
    
    else if (newWeapon != nil)
    {
        self.character.damage = self.character.damage - self.character.weapon.damage + newWeapon.damage;
        self.character.weapon = newWeapon;
    }
    
    else if (newHealthEffect != 0)
    {
        self.character.health = self.character.health + newHealthEffect;
    }
    
    else
    {
        self.character.damage = self.character.damage + self.character.weapon.damage;
        self.character.health = self.character.health + self.character.armor.health;
    }
}


#pragma mark- IBActions
- (IBAction)actionButtonPressed:(UIButton *)sender
{
    JLTile *tile = [[self.tiles objectAtIndex:self.currentPoint.x]objectAtIndex:self.currentPoint.y];
    [self updateCharacterStatsForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    [self updateTile];
    
    self.actionButtonText.hidden = YES;
    
    if (self.character.health <=0)
    {
        UIAlertView *loseGame = [[UIAlertView alloc] initWithTitle:@"You lost!" message:@"Darn" delegate:nil cancelButtonTitle:@"Start Over" otherButtonTitles: nil];
        [loseGame show];
        
        self.westButton.hidden = YES;
        self.eastButton.hidden = YES;
        self.southButton.hidden = YES;
        self.northButton.hidden =YES;
        self.actionButtonText.hidden = YES;
        
    }
    
    else if (CGPointEqualToPoint(CGPointMake(3, 2), self.currentPoint))
    {
        self.bossCharacter.health = self.bossCharacter.health - self.character.damage;
        NSLog(@"%i", self.bossCharacter.health);
        self.actionButtonText.hidden = NO;
        
        if (self.bossCharacter.health <= 0)
        {
            UIAlertView *winGame = [[UIAlertView alloc] initWithTitle:@"You won!" message:@"Congratulations" delegate:nil cancelButtonTitle:@"Start Over" otherButtonTitles: nil];
            [winGame show];
            
            self.westButton.hidden = YES;
            self.eastButton.hidden = YES;
            self.southButton.hidden = YES;
            self.northButton.hidden =YES;
            self.actionButtonText.hidden = YES;
        }

    }
    

    
}

- (IBAction)resetGame:(UIButton *)sender
{
    self.character = nil;
    self.bossCharacter = nil;
    [self viewDidLoad];
}

- (IBAction)northButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y+1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)southButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y-1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)westButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x-1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)eastButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x+1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}

@end
