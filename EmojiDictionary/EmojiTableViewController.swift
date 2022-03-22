//
//  EmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Ruben Sopra on 22/3/22.
//


import UIKit


class EmojiTableViewController: UITableViewController {
    
    let emojis = getEmojis()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        let emoji: Emoji = emojis[indexPath.row]
        let desc = emoji.character.unicodeScalars.first!.properties.name!.capitalized
        let year = emoji.year
        
        cell.textLabel?.text = "\(emoji.character) - \(desc) (\(year))"
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sender = emojis[indexPath.row]
        performSegue(withIdentifier: "Definition", sender: sender)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let definitionVc = segue.destination as! EmojiDefinitionViewController;
        definitionVc.emoji = sender as! Emoji;
    }
    
}
