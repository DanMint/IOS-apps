//
//  delCellCust.swift
//  update_and_cust_table
//
//  Created by Daniel mints on 9/10/21.
//

import UIKit

class delCellCust: UITableViewCell {
    
    
    @IBOutlet weak var dispOfEveryting: UIView!
    
    @IBOutlet weak var FLabel: UILabel!
    
    @IBOutlet weak var SLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        dispOfEveryting.layer.cornerRadius = 5
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
