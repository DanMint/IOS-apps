//
//  ViewController.swift
//  Quizz Me
//
//  Created by Daniel mints on 8/23/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.layer.cornerRadius = 25.0
        print("at view controller")
    }

    
    @IBAction func startButton(_ sender: Any) {
    }
    

}

