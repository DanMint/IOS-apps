//
//  logView.swift
//  pop_up
//
//  Created by Daniel mints on 9/10/21.
//

import UIKit
import CoreData

class logView: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.layer.cornerRadius = 5
        scrollView.layer.borderWidth = 2
        
    }
}

