//
//  JLViewController.m
//  Pirate Assignment 2
//
//  Created by Joe Lucero on 8/8/14.
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
    self.gameTiles = [factory tiles];
    self.currentPoint = CGPointMake(0, 0);
    [self updateTile];
    [self updateButtons];    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) updateTile
{
    JLTile *tileModel = [[self.gameTiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.screenStoryLabel.text = tileModel.tileStory;
    self.backgroundPicture.image = tileModel.tileImage;
}

-(void) updateButtons
{
    self.upButton.hidden = [self shouldIHideThisButton:CGPointMake(self.currentPoint.x, self.currentPoint.y+1)];
    self.leftButton.hidden = [self shouldIHideThisButton:CGPointMake(self.currentPoint.x-1, self.currentPoint.y)];
    self.rightButton.hidden = [self shouldIHideThisButton:CGPointMake(self.currentPoint.x+1, self.currentPoint.y)];
    self.downButton.hidden = [self shouldIHideThisButton:CGPointMake(self.currentPoint.x, self.currentPoint.y-1)];
}

-(BOOL) shouldIHideThisButton: (CGPoint) nextPoint
{
    if (nextPoint.x < 0 || nextPoint.x > 3)
    {
        return YES;
    }
    else if (nextPoint.y < 0 || nextPoint.y > 2)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

- (IBAction)pressedUpButton:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y+1);
    [self updateTile];
    [self updateButtons];
}
- (IBAction)pressedLeftButton:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x-1, self.currentPoint.y);
    [self updateTile];
    [self updateButtons];

}
- (IBAction)pressedRightButton:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x+1, self.currentPoint.y);
    [self updateTile];
    [self updateButtons];

}
- (IBAction)pressedDownButton:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y-1);
    [self updateTile];
    [self updateButtons];

}
@end
