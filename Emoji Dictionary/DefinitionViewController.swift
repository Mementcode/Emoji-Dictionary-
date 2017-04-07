//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by callum brennan on 07/04/2017.
//  Copyright © 2017 callum brennan Mementcode. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI" // sets the var emoji to = a String (if any emojis arent in the if statment the output will be "NO EMOJI" 

    override func viewDidLoad() {
        super.viewDidLoad()

        // below is a list of "if" statments that say if the emoji = X passes through the var emoji then change the outlet definitionLabel.(text) to a given String (or description)
        
        emojiLabel.text = emoji
        
        if emoji == "😀" {
        definitionLabel.text = "Smiling cheesy face"
            
        }
        if emoji == "😋" {
            definitionLabel.text = "Face with tongue out "
            
        }
        if emoji == "😍" {
            definitionLabel.text = "smiling face with heart-shaped eyes"
            
        }
        if emoji == "🖕🏻" {
            definitionLabel.text = "Middle finger"
            
        }
        if emoji == "🦁" {
            definitionLabel.text = "Lion Face"
            
        }
        if emoji == "🌕" {
            definitionLabel.text = "Full moon"
            
        }
        if emoji == "🎈" {
            definitionLabel.text = "Red balloon"
            
        }
        if emoji == "☺️" {
            definitionLabel.text = "Smiley happy face"
        
            
        }
        if emoji == "😖" {
            definitionLabel.text = "Confonded face"
            
        }
        if emoji == "😻" {
            definitionLabel.text = "Smiling cat face with heart-shaped eyes"
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
