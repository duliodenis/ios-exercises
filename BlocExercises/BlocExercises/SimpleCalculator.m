//
//  SimpleCalculator.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "SimpleCalculator.h"

@implementation SimpleCalculator

- (NSInteger) increaseNumberBy1:(NSInteger) number {
    return ++number;
}

- (NSInteger) addNumber:(NSInteger) number1 toNumber:(NSInteger) number2 {
    return number1 + number2;
}

- (NSInteger) remainderOfNumber:(NSInteger) dividend dividedByNumber:(NSInteger) divisor {
    return dividend % divisor;
}

@end
