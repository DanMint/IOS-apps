//
//  viewData.swift
//  practice
//
//  Created by Daniel mints on 9/4/21.
//


import UIKit
import CoreData

class viewData: UIViewController {
    
    
    @IBOutlet weak var theScroll: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        theScroll.layer.cornerRadius = 10
        theScroll.layer.borderWidth = 2
        
    }
    
    
}
