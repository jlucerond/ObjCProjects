//
//  JLViewController.m
//  MansBestFriend
//
//  Created by Joe Lucero on 5/16/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "JLViewController.h"
#import "JLDog.h"
#import "JLPuppy.h"

@interface JLViewController ()

@end

@implementation JLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.currentIndex = 0;
    
    JLDog *myDog = [[JLDog alloc] init];
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];

    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    JLDog *secondDog = [[JLDog alloc] init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.age = 2;
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    JLDog *thirdDog = [[JLDog alloc] init];
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Border Collie";
    thirdDog.age = 3;
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    JLDog *fourthDog = [[JLDog alloc] init];
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.age = 4;
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:(myDog)];
    [self.myDogs addObject:(secondDog)];
    [self.myDogs addObject:(thirdDog)];
    [self.myDogs addObject:(fourthDog)];
    
    JLPuppy *littlePuppy = [[JLPuppy alloc] init];
    [littlePuppy bark];
    littlePuppy.name = @"Bo O";
    littlePuppy.breed = @"Portuguese Water Dog";
    littlePuppy.age = 0;
    littlePuppy.image = [UIImage imageNamed:@"Bo.jpg"];

    [self.myDogs addObject:(littlePuppy)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender
{
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    
    if (self.currentIndex == randomIndex && self.currentIndex == 0)
    {
        randomIndex ++;
    }
    
    else if (self.currentIndex == randomIndex)
    {
        randomIndex --;
    }
    
    JLDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;

    [UIView transitionWithView:(self.view) duration:(1) options:(UIViewAnimationOptionTransitionCrossDissolve) animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
    
    sender.title = @"And Another";
    if (randomDog.age == 0){
        [randomDog bark];
    }
    self.currentIndex = randomIndex;
    }
@end
