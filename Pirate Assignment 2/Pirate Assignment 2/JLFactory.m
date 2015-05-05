//
//  JLFactory.m
//  Pirate Assignment 2
//
//  Created by Joe Lucero on 8/8/14.
//
//

#import "JLFactory.h"
#import "JLTile.h"

@implementation JLFactory

-(NSArray *) tiles
{
    //column 1
    JLTile *tile1 = [[JLTile alloc] init];
    tile1.tileStory = @"story 1";
    tile1.tileImage = [UIImage imageNamed:@"PirateStart copy.jpg"];
    
    JLTile *tile2 = [[JLTile alloc] init];
    tile2.tileStory = @"something 2";
    
    JLTile *tile3 = [[JLTile alloc] init];
    tile3.tileStory = @"something 3";

    NSArray *column1 = [[NSArray alloc] initWithObjects:tile1, tile2, tile3, nil];
    
    //column2
    JLTile *tile4 = [[JLTile alloc] init];
    tile4.tileStory = @"something 4";

    JLTile *tile5 = [[JLTile alloc] init];
    tile5.tileStory = @"something 5";

    JLTile *tile6 = [[JLTile alloc] init];
    tile6.tileStory = @"something 6";

    NSArray *column2 = [[NSArray alloc] initWithObjects:tile4, tile5, tile6, nil];
    
    //column3
    JLTile *tile7 = [[JLTile alloc] init];
    tile7.tileStory = @"something 7";

    JLTile *tile8 = [[JLTile alloc] init];
    tile8.tileStory = @"something 8";

    JLTile *tile9 = [[JLTile alloc] init];
    tile9.tileStory = @"something 9";

    NSArray *column3 = [[NSArray alloc] initWithObjects:tile7, tile8, tile9, nil];
    
    //column4
    JLTile *tile10 = [[JLTile alloc] init];
    tile10.tileStory = @"something 10";

    JLTile *tile11 = [[JLTile alloc] init];
    tile11.tileStory = @"something 11";

    JLTile *tile12 = [[JLTile alloc] init];
    tile12.tileStory = @"something 12";

    NSArray *column4 = [[NSArray alloc] initWithObjects:tile10, tile11, tile12, nil];
    
    //total array
    NSArray *allColumns = [[NSArray alloc] initWithObjects:column1, column2, column3, column4, nil];
                        
    return allColumns;
    
};



@end
