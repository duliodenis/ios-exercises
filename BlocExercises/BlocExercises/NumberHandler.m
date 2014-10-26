//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    return [NSNumber numberWithInt:(2 * [number intValue])];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *arrayOfNumbers = [NSMutableArray array];
    if (number > otherNumber) {
        NSInteger temp = number;
        number = otherNumber;
        otherNumber = temp;
    }
    for (;number <= otherNumber; number++) {
        [arrayOfNumbers addObject:[NSNumber numberWithInteger:number]];
    }
    return arrayOfNumbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSNumber *lowestValue = [arrayOfNumbers firstObject];
    for (NSNumber *number in arrayOfNumbers) {
        if ([number integerValue] < [lowestValue integerValue]) {
            lowestValue = number;
        }
    }
    return [lowestValue integerValue];
}

@end
