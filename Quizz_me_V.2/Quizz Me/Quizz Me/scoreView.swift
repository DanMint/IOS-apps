//
//  scoreView.swift
//  Quizz Me
//
//  Created by Daniel mints on 8/25/21.
//

import UIKit

class scoreView: UIViewController {
    
    @IBOutlet weak var pointsDisp: UILabel!
    
    
    @IBOutlet weak var actualPoints: UILabel!
    
    
    @IBOutlet weak var catButMod: UIButton!
    
    
    @IBOutlet weak var menueButMod: UIButton!
    
    var totalPoints : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pointsDisp.layer.borderWidth = 2
        pointsDisp.layer.cornerRadius = 10
        pointsDisp.clipsToBounds = true
        
        catButMod.layer.borderWidth = 2
        catButMod.layer.cornerRadius = 20
        
        menueButMod.layer.borderWidth = 2
        menueButMod.layer.cornerRadius = 20
        
        actualPoints.text = totalPoints
    }
    
}

