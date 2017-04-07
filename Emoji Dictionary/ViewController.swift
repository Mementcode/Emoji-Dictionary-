//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by callum brennan on 02/04/2017.
//  Copyright © 2017 callum brennan Mementcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource , UITableViewDelegate
{

    @IBOutlet weak var tabelview: UITableView!
    
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tabelview.dataSource = self // identifies the tabel view rows
        tabelview.delegate = self // allows a certain "output" to occur within a row
        
        emojis = makeEmojiArry() // when tableveiw is brought up for the first time it looks to func MakeEmojiArry and inputs that function into the array emojis
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return  emojis.count // counts the current array index path and applies it to the number or rows in the table veiw (or number)
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row] // makes the array size of emojis define the number of rows
        cell.textLabel?.text = emoji.symbol // adds the actual emoji symbol from the object symbol inside the fucntion MakeEmoji array
        return cell
        
    }
    // when the tabelview is selected, it applies an animated veiw control move as per the sender
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegueWithIdentifier("moveSegue", sender: emoji)
    }
    // connects the action of clicking on a row and applies it to the view controller DefintitionVeiwController and applies the let defVC to defVC.emoji = the sender (which is the var emoji and display it as a "String"
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let defVC = segue.destinationViewController as! DefinitionViewController
        defVC.emoji = sender as! Emoji
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArry () -> [Emoji] {
        
        let emoji1 = Emoji()
        
        emoji1.symbol = "😀"
        emoji1.birthYear = 2011
        emoji1.category = "Smiley"
        emoji1.defintion = "Smiling cheesy face"
        
        let emoji2 = Emoji()
        
        emoji2 .symbol = "😋"
        emoji2 .birthYear = 2012
        emoji2 .category = "Smiley"
        emoji2 .defintion = "Smiling cheesy face"
        
        let emoji3 = Emoji()
        
        emoji3 .symbol = "😍"
        emoji3 .birthYear = 2009
        emoji3 .category = "Smiley"
        emoji3 .defintion = "smiling face with heart-shaped eyes"
        
        let emoji4 = Emoji()
        
        emoji4 .symbol = "🖕🏻"
        emoji4 .birthYear = 2005
        emoji4 .category = "Hand Gesture"
        emoji4 .defintion = "Middle finger"
        
        let emoji5 = Emoji()
        
        emoji5 .symbol = "🦁"
        emoji5 .birthYear = 2016
        emoji5 .category = "Animal"
        emoji5 .defintion = "Lion Face"
        
        let emoji6 = Emoji()
        
        emoji6 .symbol = "🌕"
        emoji6 .birthYear = 2017
        emoji6 .category = "Planet"
        emoji6 .defintion = "Full Moon"
        
        let emoji7 = Emoji()
        
        emoji7 .symbol = "🎈"
        emoji7 .birthYear = 2003
        emoji7 .category = "Celebration"
        emoji7 .defintion = "Red Balloon"
        
        let emoji8 = Emoji()
        
        emoji8 .symbol = "☺️"
        emoji8 .birthYear = 2011
        emoji8 .category = "Smiley"
        emoji8 .defintion = "Smiley Happy Face"
        
        let emoji9 = Emoji()
        
        emoji9 .symbol = "😖"
        emoji9 .birthYear = 2001
        emoji9 .category = "Smiley"
        emoji9 .defintion = "Confonded face"
        
        let emoji10 = Emoji()
        
        emoji10 .symbol = "😻"
        emoji10 .birthYear = 2013
        emoji10 .category = "Animal"
        emoji10 .defintion = "Smiling cat face with heart-shaped eyes"
        
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5,emoji6,emoji7,emoji8,emoji9,emoji10]
        
    }

}

