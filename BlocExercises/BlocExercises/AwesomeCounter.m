//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    // Switch them if they come in out of order
    if (otherNumber < number) {
        NSInteger temp = otherNumber;
        otherNumber = number;
        number = temp;
    }
    
    NSString *result = [NSString stringWithFormat:@"%ld",(long)number];
    NSInteger limit = ++number;
    
    while (limit <= otherNumber) {
        result = [result stringByAppendingString:[NSString stringWithFormat:@"%ld",(long)limit]];
        limit++;
    }
    
    return result;
}

@end
