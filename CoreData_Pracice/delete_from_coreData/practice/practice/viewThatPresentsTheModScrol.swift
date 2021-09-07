//
//  viewThatPresentsTheModScrol.swift
//  practice
//
//  Created by Daniel mints on 9/6/21.
//

import UIKit
import CoreData

class viewThatPresentsTheModScrol: UIViewController {
    
    @IBOutlet weak var theScrollView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        theScrollView.layer.cornerRadius = 10
        theScrollView.layer.borderWidth = 2
        
    }
    
    
}
