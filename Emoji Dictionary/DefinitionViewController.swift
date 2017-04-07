//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by callum brennan on 07/04/2017.
//  Copyright © 2017 callum brennan Mementcode. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var birthYear: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = Emoji() // sets the var emoji to = the Class Emoji

    override func viewDidLoad() {
        super.viewDidLoad()

        // below is how I have implemented the created class Emoji with all its objects and I am able to adjust the input for each object.text depending on the infomation coming from func MakeEmojiArry.
        
        emojiLabel.text = emoji.symbol
        
        birthYear.text = "BirthYear: \(emoji.birthYear)"
        category.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.defintion
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
