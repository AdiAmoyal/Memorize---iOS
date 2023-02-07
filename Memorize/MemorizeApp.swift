//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Adi Amoyal on 30/01/2023.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
