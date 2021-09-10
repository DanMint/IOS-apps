//
//  edit_cell_Cust.swift
//  update_and_cust_table
//
//  Created by Daniel mints on 9/10/21.
//

import UIKit

class edit_cell_Cust: UITableViewCell {
    
    @IBOutlet weak var viewOfLabels: UIView!
    
    @IBOutlet weak var FELabel: UILabel!
    
    @IBOutlet weak var SELabel: UILabel!
    
    @IBOutlet weak var editBut: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        viewOfLabels.layer.cornerRadius = 10
        
        editBut.layer.cornerRadius = 10
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
