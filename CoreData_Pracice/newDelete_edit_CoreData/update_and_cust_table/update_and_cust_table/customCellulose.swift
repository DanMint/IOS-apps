//
//  customCellulose.swift
//  update_and_cust_table
//
//  Created by Daniel mints on 9/7/21.
//

import UIKit

class customCellulose: UITableViewCell {
    
    @IBOutlet weak var viewForTexts: UIView!
    
    @IBOutlet weak var FLabel: UILabel!
    
    @IBOutlet weak var SLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        viewForTexts.layer.cornerRadius = 10
        viewForTexts.layer.borderWidth = 3
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
