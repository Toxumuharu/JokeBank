//
//  JokeDefinitionViewController.swift
//  JokeBank
//
//  Created by Toxumuharu on 2020/10/12.
//  Copyright © 2020 toxumuharu.com. All rights reserved.
//

import UIKit

class JokeDefinitionViewController: UIViewController {
    
    var joke = ""
    @IBOutlet weak var jokeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = joke
        
        if joke == "Chicken" {
            jokeLabel.text = "Q: Why did the chiken cross the road?\n\nA: To get to the other side"
        }
        
        if joke == "Walk into a bar..." {
            jokeLabel.text = "A horse walks into a bar and the bartender says \"Why the long face?\""
        }
        
        if joke == "Olives" {
            jokeLabel.text = "Two olives are on an olive tree branch play around. One of the olives bumps the other and knocks him off the branch. His friend wobbles ot the edge and shouts down, \"Are you ok!?\"\n\nHi friend on the ground squeaks out, \"Don't worry...olive...\""
        }
        
        if joke == "Racer" {
            jokeLabel.text = "Q: What did the hot dog say when he crossed the finish line?\n\nA: I'm the weiner!"
        }
    }
}
