//
//  JLViewController.h
//  Pirate Assignment 2
//
//  Created by Joe Lucero on 8/8/14.
//
//

#import <UIKit/UIKit.h>
#import "JLTile.h"
#import "JLFactory.h"

@interface JLViewController : UIViewController

//Variables
@property (strong, nonatomic) NSArray *gameTiles;
@property (nonatomic) CGPoint currentPoint;

//Labels
@property (strong, nonatomic) IBOutlet UIImageView *backgroundPicture;
@property (strong, nonatomic) IBOutlet UILabel *screenStoryLabel;
@property (strong, nonatomic) IBOutlet UIButton *upButton;
@property (strong, nonatomic) IBOutlet UIButton *leftButton;
@property (strong, nonatomic) IBOutlet UIButton *rightButton;
@property (strong, nonatomic) IBOutlet UIButton *downButton;

//Actions
- (IBAction)pressedUpButton:(UIButton *)sender;
- (IBAction)pressedLeftButton:(UIButton *)sender;
- (IBAction)pressedRightButton:(UIButton *)sender;
- (IBAction)pressedDownButton:(UIButton *)sender;

@end
