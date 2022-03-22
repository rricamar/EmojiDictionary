//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Ruben Sopra on 22/3/22.
//

import Foundation


struct Emoji {
    var character = ""
    var definition = ""
    var year = 0
    var rating = 0.0
}


func getEmojis() -> [Emoji] {
    let emojis = ["🚂", "👍"]
    
    let emoji1 = Emoji(character: emojis[0], definition: "Fake's train", year: 2022, rating: 0)
    let emoji2 = Emoji(character: emojis[1], definition: "Ok", year: 2022, rating: 10)
    
    return [emoji1, emoji2]
}
