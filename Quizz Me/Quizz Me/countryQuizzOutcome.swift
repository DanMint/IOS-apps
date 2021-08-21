//
//  countryQuizzOutcome.swift
//  Quizz Me
//
//  Created by Daniel mints on 8/20/21.
//

import UIKit

class countryQuizzOutcome: UIViewController {
    
    @IBOutlet weak var points: UILabel!
    
    @IBOutlet weak var outOf: UILabel!
    
    var pointo : String = ""
    var total : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        points.text = pointo
        outOf.text = total
        
    }
    
    
    @IBAction func backToCategories(_ sender: Any) {
    }
    
    
    @IBAction func mainMenue(_ sender: Any) {
    }
    

}


