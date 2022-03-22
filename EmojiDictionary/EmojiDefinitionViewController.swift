//
//  EmojiDefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Ruben Sopra on 22/3/22.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    var emoji: Emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let character = emoji.character
        let description = "\(character.unicodeScalars.first!.properties.name!.capitalized) - \(emoji.definition)"
        let year = emoji.year
        let rating = emoji.rating
        
        emojiLabel.text = character
        descLabel.text = "Description: \(description).\nYear: \(year).\nRating: \(rating)"
    }

}
