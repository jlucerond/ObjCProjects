//
//  JLUserData.h
//  User Data Challenge Solution
//
//  Created by Joe Lucero on 8/22/14.
//
//

#import <Foundation/Foundation.h>

#define USERNAME @"Username"
#define EMAIL @"Email"
#define PASSWORD @"Password"
#define AGE @"Age"
#define PROFILEPICTURE @"Profile Picture"

@interface JLUserData : NSObject

+(NSArray *) users;

@end
