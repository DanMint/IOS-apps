//
//  customScrolView.swift
//  update_and_cust_table
//
//  Created by Daniel mints on 9/7/21.
//

import UIKit

class customScrolView: UIViewController {

    
    @IBOutlet weak var scrollSeenary: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        scrollSeenary.layer.borderWidth = 2
        
        scrollSeenary.layer.cornerRadius = 10
        
    }


}
