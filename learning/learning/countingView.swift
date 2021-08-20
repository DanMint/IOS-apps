//
//  ViewController.swift
//  learning
//
//  Created by Daniel mints on 8/14/21.
//

import UIKit

class countingView: UIViewController {
    
    
    @IBOutlet weak var changing: UILabel!
    
    var addMe = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ON counting")
    }

    @IBAction func adder(_ sender: Any) {
        
        addMe += 1
        changing.text = "\(addMe)"
        
    }
    
}

