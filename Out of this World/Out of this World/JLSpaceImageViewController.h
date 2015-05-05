//
//  JLSpaceImageViewController.h
//  Out of this World
//
//  Created by Joe Lucero on 8/25/14.
//
//

#import <UIKit/UIKit.h>

@interface JLSpaceImageViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIImageView *imageView;

@end
