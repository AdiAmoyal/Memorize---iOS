//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Adi Amoyal on 31/01/2023.
//
// ******* View Model *******

import SwiftUI


var foodEmojis = ["🌭", "🌮", "🍉", "🥙", "🍔", "🥑", "🍕", "🥝",
                 "🍫", "🥨", "🍱", "🥯"]
var flagsEmojis = ["🇨🇴", "🇲🇦", "🇧🇷", "🇫🇷", "🇮🇱", "🇮🇹", "🇵🇪", "🇬🇧",
                  "🇺🇸", "🇬🇷"]

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let vehiclesEmojis = ["⛴️", "🚀", "🚁", "🚂", "🚃", "🛩️", "🚄", "🚆",
                  "🚇", "🚉", "🚌", "🚗", "🚕", "🚓", "🚑", "🚒",
                  "🚎", "🚙", "🚚", "🚡", "🏍️", "🚲", "🛫", "⛵️"]
    
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

