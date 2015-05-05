//
//  JLDog.h
//  Class Testing Ground
//
//  Created by Joe Lucero on 5/28/14.
//
//

#import <Foundation/Foundation.h>

@interface JLDog : NSObject
{
    NSString *_name;
}

@property (strong, nonatomic) NSString *name;

-(void) setName:(NSString *)name;
-(NSString *)name;

@end
