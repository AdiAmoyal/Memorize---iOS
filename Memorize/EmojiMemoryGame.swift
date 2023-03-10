//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Adi Amoyal on 31/01/2023.
//
// ******* View Model *******

import SwiftUI


var foodEmojis = ["đ­", "đŽ", "đ", "đĨ", "đ", "đĨ", "đ", "đĨ",
                 "đĢ", "đĨ¨", "đą", "đĨ¯"]
var flagsEmojis = ["đ¨đ´", "đ˛đĻ", "đ§đˇ", "đĢđˇ", "đŽđą", "đŽđš", "đĩđĒ", "đŦđ§",
                  "đēđ¸", "đŦđˇ"]

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let vehiclesEmojis = ["â´ī¸", "đ", "đ", "đ", "đ", "đŠī¸", "đ", "đ",
                  "đ", "đ", "đ", "đ", "đ", "đ", "đ", "đ",
                  "đ", "đ", "đ", "đĄ", "đī¸", "đ˛", "đĢ", "âĩī¸"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in
            vehiclesEmojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func chooseCard(_ card: Card) {
        model.chooseCard(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}

