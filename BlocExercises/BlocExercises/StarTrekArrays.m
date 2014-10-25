//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *sortedArray = [characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [sortedArray sortUsingDescriptors:@[sortDescriptor]];
    return sortedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSMutableArray *filteredArray = [characterArray mutableCopy];
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    [filteredArray filterUsingPredicate:containsWorf];
    
    return (filteredArray.count > 0);
}

@end
