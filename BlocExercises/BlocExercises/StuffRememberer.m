//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.rememberedArray = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.copiedArray = [arrayToCopy mutableCopy];
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.rememberedFloat = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    return self.rememberedArray;
}

- (NSMutableArray *) arrayYouShouldCopy {
    return [self.copiedArray mutableCopy];
}

- (CGFloat) floatYouShouldRemember {
    return self.rememberedFloat;
}

@end