//
//  dispForCustTableView.swift
//  practice
//
//  Created by Daniel mints on 9/6/21.
//

import UIKit
import CoreData

class dispForCustTableView: UIViewController {
    
    
    @IBOutlet weak var scrolloView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrolloView.layer.borderWidth = 2
        scrolloView.layer.cornerRadius = 5
    }
    
    
}
