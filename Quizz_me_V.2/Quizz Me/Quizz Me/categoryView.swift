//
//  categoryView.swift
//  Quizz Me
//
//  Created by Daniel mints on 8/23/21.
//

import UIKit

class categoryView: UIViewController {
    
    
    @IBOutlet weak var category: UILabel!
    
    
    @IBOutlet weak var caountryMod: UIButton!
    
    
    @IBOutlet weak var capitalMod: UIButton!
    
    
    @IBOutlet weak var historyMod: UIButton!
    
    
    @IBOutlet weak var shuffleMod: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        category.layer.borderWidth = 2
        category.layer.cornerRadius = 30
        caountryMod.layer.cornerRadius = 10
        caountryMod.layer.borderWidth = 2
        capitalMod.layer.cornerRadius = 10
        capitalMod.layer.borderWidth = 2
        historyMod.layer.cornerRadius = 10
        historyMod.layer.borderWidth = 2
        shuffleMod.layer.cornerRadius = 10
        shuffleMod.layer.borderWidth = 2
        print("--------------------------------------------------")

    }
    
    var categoryToUse = ""
    var hello : String = "shuffle"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backToStart" {
            _ = segue.destination as! ViewController
        }
        else if segue.identifier == "categoriesToQuestion" {
            let ve = segue.destination as! questionireView
            ve.toUse = hello
        }
        else {
            let vc = segue.destination as! questionireView
            vc.toUse = categoryToUse
        }
    }
    
    @IBAction func country(_ sender: Any) {
        self.categoryToUse = "countries"
        performSegue(withIdentifier: "countryToQuistone", sender: self)
    }
    
    
    @IBAction func capital(_ sender: Any) {
        self.categoryToUse = "capitals"
        performSegue(withIdentifier: "capitalToQuistone", sender: self)

    }
    
    
    @IBAction func history(_ sender: Any) {
        self.categoryToUse = "history"
        performSegue(withIdentifier: "historyToQuestion", sender: self)

    }
    
    
    @IBAction func shuffle(_ sender: Any) {
        self.categoryToUse = "shuffle"
        performSegue(withIdentifier: "categoriesToQuestion", sender: self)

    }
    
   
    
}
