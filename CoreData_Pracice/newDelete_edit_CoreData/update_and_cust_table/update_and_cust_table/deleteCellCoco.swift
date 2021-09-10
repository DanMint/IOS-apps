//
//  deleteCellCoco.swift
//  update_and_cust_table
//
//  Created by Daniel mints on 9/8/21.
//

import UIKit
import CoreData

class deleteCellCoco: UITableViewCell{
    
    @IBOutlet weak var viewOfDelCell: UIView!
    
    @IBOutlet weak var FDLabel: UILabel!
    
    @IBOutlet weak var SDLabel: UILabel!
    
    @IBOutlet weak var delCust: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        viewOfDelCell.layer.cornerRadius = 10
        viewOfDelCell.layer.borderWidth = 2
        
        delCust.layer.cornerRadius = 10
        
        FDLabel.layer.borderWidth = 2
        FDLabel.clipsToBounds = true
        
        SDLabel.layer.borderWidth = 2
        SDLabel.clipsToBounds = true
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
