//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Rohan Prakash on 4/9/17.
//  Copyright © 2017 Rohan Prakash. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var thetable: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        thetable.dataSource = self
        thetable.delegate = self
        emojis = makeEmojiArray()
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as!
            DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.date = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A cool guy"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "💩"
        emoji2.date = 2011
        emoji2.category = "Item"
        emoji2.definition = "A poop"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😀"
        emoji3.date = 2005
        emoji3.category = "Smiley"
        emoji3.definition = "A happy guy"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👻"
        emoji4.date = 2009
        emoji4.category = "Creature"
        emoji4.definition = "A ghost"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐹"
        emoji5.date = 2012
        emoji5.category = "Creature"
        emoji5.definition = "A hamster"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
    }

}

