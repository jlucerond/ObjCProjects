//
//  JLSpaceImageViewController.m
//  Out of this World
//
//  Created by Joe Lucero on 8/25/14.
//
//

#import "JLSpaceImageViewController.h"

@interface JLSpaceImageViewController ()

@end

@implementation JLSpaceImageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Create an image
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed: @"Earth.jpg"]];
    // Select the size of the scrolling area
    self.scrollView.contentSize = self.imageView.frame.size;
    // Lay the image view on top of the scroll view
    [self.scrollView addSubview:self.imageView];
    
    // Scroll view has a property called delegate; We set this to listen to self, i.e. events done on screen
    self.scrollView.delegate = self;
    self.scrollView.maximumZoomScale = 2;
    self.scrollView.minimumZoomScale = 0.11;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//Conform to a protocol that was introduced in the header file
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}

@end
