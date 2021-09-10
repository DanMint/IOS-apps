//
//  deleteCellMod.swift
//  update_and_cust_table
//
//  Created by Daniel mints on 9/9/21.
//

import UIKit

class deleteCellMod: UITableViewCell {
    
    
    @IBOutlet weak var viewForDisp: UIView!
    
    @IBOutlet weak var delBut: UIButton!
    
    
    @IBOutlet weak var FDlabel: UILabel!
    
    
    @IBOutlet weak var SDlabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
