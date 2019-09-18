//
//  Game.Swift
//  Apple Pie
//
//  Created by Kaden Storrs on 9/16/19.
//  Copyright © 2019 Kaden Storrs. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaning: Int
    var guessedLetters: [Character]
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaning -= 1
        }
    }
    var formattedWord: String {
        var guessedWord = ""
        for letters in word {
            if guessedLetters.contains(letters) {
                guessedWord += "\(letters)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
}




    


