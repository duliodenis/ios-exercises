//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSString *favoriteDrink = characterDictionary[@"favorite drink"];
    if (favoriteDrink != nil && [favoriteDrink isKindOfClass:[NSString class]]) {
        return favoriteDrink;
    }
    return nil;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *arrayofFavoriteDrinks = [NSMutableArray array];
    for (NSDictionary *characters in charactersArray) {
        [arrayofFavoriteDrinks addObject:[self favoriteDrinkForStarTrekCharacterDictionary:characters]];
    }
    
    return arrayofFavoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *updatedCharacterDictionary = [characterDictionary mutableCopy];
    NSString *quote = updatedCharacterDictionary[@"quote"];
    if (!quote) {
        [updatedCharacterDictionary setObject:@"A quote was not included." forKey:@"quote"];
    }
    return updatedCharacterDictionary;
}

@end
