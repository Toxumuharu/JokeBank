//
//  JokeTableViewController.swift
//  JokeBank
//
//  Created by Toxumuharu on 2020/10/12.
//  Copyright © 2020 toxumuharu.com. All rights reserved.
//

import UIKit

class JokeTableViewController: UITableViewController {
    
    var jokes = ["Chicken", "Walk into a bar...", "Olives", "Racer"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // how many?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return jokes.count
    }
    
    // what goes inside?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        print(indexPath.row)
        cell.textLabel?.text = jokes[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tapped \(indexPath.row)")
        
        let selectedJoke = jokes[indexPath.row]
        
        performSegue(withIdentifier: "moveToJokeDefinition", sender: selectedJoke)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // something prepare before next ViewController
        if let jokeVC = segue.destination as? JokeDefinitionViewController{
            if let selectedJoke = sender as? String{
                jokeVC.joke = selectedJoke
            }
            
        }
    }
}
