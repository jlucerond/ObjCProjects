//
//  JLViewController.m
//  MansBestFriend2
//
//  Created by Joe Lucero on 8/5/14.
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
    JLDog *myDog = [[JLDog alloc] init];
    myDog.age = 1;
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";    
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    JLDog *secondDog = [[JLDog alloc] init];
    secondDog.age = 2;
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    JLDog *thirdDog = [[JLDog alloc] init];
    thirdDog.age = 3;
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    JLDog *fourthDog = [[JLDog alloc] init];
    fourthDog.age = 4;
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    
    self.myImageView.image = myDog.image;
    self.myNameLabel.text = myDog.name;
    self.myBreedLabel.text = myDog.breed;
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
    self.oldNumber = 0;
    
    JLPuppy *newPuppy = [[JLPuppy alloc] init];
    
    [fourthDog bark];
    [newPuppy bark];
    
    newPuppy.name = @"Bo O";
    newPuppy.age = 0;
    newPuppy.breed = @"Portuguese Water Dog";
    newPuppy.image = [UIImage imageNamed:@"Bo.jpg"];
    [self.myDogs addObject:newPuppy];
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) printHelloWorld
{
    NSLog(@"Hello World");
}

- (IBAction)nextDogPressed:(UIBarButtonItem *)sender
{
    int numOfDogs = [self.myDogs count];
    int randomIndex = arc4random()%numOfDogs;
    
    if(self.oldNumber == randomIndex)
    {
        randomIndex = arc4random()%numOfDogs;
    }
    
    if(self.oldNumber == randomIndex)
    {
        randomIndex = arc4random()%numOfDogs;
    }
    
    JLDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
    [UIView transitionWithView:self.view duration:.3 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.myBreedLabel.text = randomDog.breed;
        self.myNameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
    
    NSLog(@"%i", randomIndex);
    self.oldNumber = randomIndex;

}

@end
