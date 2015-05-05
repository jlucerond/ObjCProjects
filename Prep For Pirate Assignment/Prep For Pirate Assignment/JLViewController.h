//
//  JLViewController.h
//  Prep For Pirate Assignment
//
//  Created by Joe Lucero on 6/2/14.
//
//

#import <UIKit/UIKit.h>
#import "JLAwesomeClass.h"


@interface JLViewController : UIViewController

@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) IBOutlet UIButton *myButton;
@property (strong, nonatomic) JLAwesomeClass *awesomeClass;

@end
