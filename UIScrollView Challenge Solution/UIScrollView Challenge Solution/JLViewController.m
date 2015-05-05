//
//  JLViewController.m
//  UIScrollView Challenge Solution
//
//  Created by Joe Lucero on 8/28/14.
//
//

#import "JLViewController.h"

@interface JLViewController () 

@end

@implementation JLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.mapOfTheWorld = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map.jpeg"]];
    self.imageToBeScrolled.contentSize = self.mapOfTheWorld.frame.size;
    [self.imageToBeScrolled addSubview:self.mapOfTheWorld];
    
    self.imageToBeScrolled.delegate = self;
    self.imageToBeScrolled.minimumZoomScale = .1;
    self.imageToBeScrolled.maximumZoomScale = 200;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.mapOfTheWorld;
}

@end
