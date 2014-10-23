//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    if (!cheeseRange.length) {
        return cheeseName;
    }
    return [cheeseName substringToIndex:cheeseRange.location];
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *result;
    if (cheeseCount == 1) {
        result = [NSString stringWithFormat:@"%ld cheese", cheeseCount];
    } else {
        result = [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
    }
    
    return result;
}

@end
