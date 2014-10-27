import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    var favoriteCheeseString = "My favorite cheese is \(cheese)."
    return favoriteCheeseString
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]
// Add 5 to this array
numberArray + [5]

let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
var newNumberDictionary = numberDictionary
newNumberDictionary[5] = "five"
println(newNumberDictionary)

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for i in 1...10 {
    print("\(i) ")
}

// Use a half-closed range loop to print 1 - 10, inclusively
for i in 1..<11 {
    print("\(i) ")
}


let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    var favoriteDrinks = [String]()
    for i in 0...1 {
        favoriteDrinks.append(characters[i]["favorite drink"]!)
    }
    return favoriteDrinks
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in
func semicolonSeperated(groceries:Array<String>) -> String {
    var returnString = groceries[0]
    for item in groceries {
        if item != groceries[0] {
            returnString = returnString + ";" + item
        }
    }
    return returnString
}

let expectedOutput = "milk;eggs;bread;challah"
println(semicolonSeperated(strings))


/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE
