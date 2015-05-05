//
//  JLViewController.h
//  UIScrollView Challenge Solution
//
//  Created by Joe Lucero on 8/28/14.
//
//

#import <UIKit/UIKit.h>

@interface JLViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *imageToBeScrolled;
@property (strong, nonatomic) UIImageView *mapOfTheWorld;

@end
