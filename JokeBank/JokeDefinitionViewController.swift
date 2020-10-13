//
//  JokeDefinitionViewController.swift
//  JokeBank
//
//  Created by Toxumuharu on 2020/10/12.
//  Copyright © 2020 toxumuharu.com. All rights reserved.
//

import UIKit

class JokeDefinitionViewController: UIViewController {
    
    var joke = Joke()
    @IBOutlet weak var jokeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = joke.title
        jokeLabel.text = joke.text
        
    }
}
