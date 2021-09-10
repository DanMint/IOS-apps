//
//  edit_view.swift
//  update_and_cust_table
//
//  Created by Daniel mints on 9/10/21.
//

import UIKit

class edit_view: UIViewController {
    
    
    @IBOutlet weak var viewOfEditScroll: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewOfEditScroll.layer.cornerRadius = 10
        viewOfEditScroll.layer.borderWidth = 2
        
    }


}
