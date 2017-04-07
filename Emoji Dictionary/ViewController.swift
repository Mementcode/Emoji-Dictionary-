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
    
    
    var emojis = ["😀","😋","😍","🖕🏻","🦁","🌕","🎈","☺️","😖","😻"] // Array of emojis
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tabelview.dataSource = self // identifies the tabel view rows
        tabelview.delegate = self // allows a certain "output" to occur within a roq
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return  emojis.count // counts the current array index path and applies it to the number or rows in the table veiw (or number)
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        print(indexPath.row) // prints index path
        
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row] // changes the let cell(.textLabel?.text = the index path for the array emojis
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
        defVC.emoji = sender as! String
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

