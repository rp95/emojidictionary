//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Rohan Prakash on 4/9/17.
//  Copyright © 2017 Rohan Prakash. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😎" {
            definitionLabel.text = "A cool guy"
        }
        if emoji == "💩" {
            definitionLabel.text = "A poop"
        }
        if emoji == "😀" {
            definitionLabel.text = "A happy guy"
        }
        if emoji == "👻" {
            definitionLabel.text = "A ghost"
        }
        if emoji == "🐹" {
            definitionLabel.text = "A hamster"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
