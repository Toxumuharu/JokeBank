//
//  JokeTableViewController.swift
//  JokeBank
//
//  Created by Toxumuharu on 2020/10/12.
//  Copyright © 2020 toxumuharu.com. All rights reserved.
//

import UIKit

class JokeTableViewController: UITableViewController {
    
    var jokes: [Joke] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var joke1 = Joke()
        joke1.title = "Chicken"
        joke1.text = "Q: Why did the chiken cross the road?\n\nA: To get to the other side"
        
        var joke2 = Joke()
        joke2.title = "Walk into a bar..."
        joke2.text = "A horse walks into a bar and the bartender says \"Why the long face?\""
        
        var joke3 = Joke()
        joke3.title = "Olives"
        joke3.text = "Two olives are on an olive tree branch play around. One of the olives bumps the other and knocks him off the branch. His friend wobbles ot the edge and shouts down, \"Are you ok!?\"\n\nHi friend on the ground squeaks out, \"Don't worry...olive...\""
        
        var joke4 = Joke()
        joke4.title = "Racer"
        joke4.text = "Q: What did the hot dog say when he crossed the finish line?\n\nA: I'm the weiner!"

        
        jokes = [joke1, joke2, joke3, joke4]
    }
    
    // how many?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return jokes.count
    }
    
    // what goes inside?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        print(indexPath.row)
        cell.textLabel?.text = jokes[indexPath.row].title
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedJoke = jokes[indexPath.row]
        
        performSegue(withIdentifier: "moveToJokeDefinition", sender: selectedJoke)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // something prepare before next ViewController
        if let jokeVC = segue.destination as? JokeDefinitionViewController{
            if let selectedJoke = sender as? Joke{
                jokeVC.joke = selectedJoke
            }
            
        }
    }
}
