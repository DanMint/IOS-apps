//
//  ViewController.swift
//  Quizz Me
//
//  Created by Daniel mints on 8/18/21.
//

import UIKit

class categoryView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backToMenue" {
            _ = segue.destination as! ViewController
        }
        else if segue.identifier == "shuffleCategory" {
            _ = segue.destination as! shuffleView
        }
        else {
            let vc = segue.destination as! countryQuizzView
            vc.arrayToUse = categoryToUse
        }
    }
    
    var categoryToUse : String = ""
   
    
    @IBAction func countries(_ sender: Any) {
        self.categoryToUse = "countries"
        performSegue(withIdentifier: "countryCategory", sender: self)
    }
    
    
    @IBAction func capital(_ sender: Any) {
        self.categoryToUse = "capitals"
        performSegue(withIdentifier: "capitalCategory", sender: self)

    }
    
    
        
    @IBAction func history(_ sender: Any) {
        self.categoryToUse = "history"
        performSegue(withIdentifier: "historyCategory", sender: self)
    }
    
    
    @IBAction func back(_ sender: Any) {
        performSegue(withIdentifier: "backToMenue", sender: self)
    }
    
    
    @IBAction func shufflo(_ sender: Any) {
        performSegue(withIdentifier: "shuffleCategory", sender: self)
    }
    
  
}

