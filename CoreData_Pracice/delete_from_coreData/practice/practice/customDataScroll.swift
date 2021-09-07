//
//  customDataScroll.swift
//  practice
//
//  Created by Daniel mints on 9/5/21.
//

import UIKit
import CoreData

class customDataScroll: UIViewController {
    
    
    @IBOutlet weak var theScroll: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
//        theScroll.delete = self
        
        
    }
}

extension customDataScroll: UITableViewDataSource {
    
}
 
