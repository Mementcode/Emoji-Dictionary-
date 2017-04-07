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
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
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
