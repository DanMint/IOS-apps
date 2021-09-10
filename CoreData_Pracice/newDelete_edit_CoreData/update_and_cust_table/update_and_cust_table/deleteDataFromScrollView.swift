//
//  deleteDataFromScrollView.swift
//  update_and_cust_table
//
//  Created by Daniel mints on 9/8/21.
//

import UIKit

class deleteDataFromScrollView: UIViewController {
    
    
    @IBOutlet weak var theDeleteScroll: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        theDeleteScroll.layer.cornerRadius = 10
        theDeleteScroll.layer.borderWidth = 3
        
    }


}
