//
//  custCellMod.swift
//  practice
//
//  Created by Daniel mints on 9/6/21.
//

import UIKit

class custCellMod: UITableViewCell {
    
    
    @IBOutlet weak var theViewDisp: UIView!
    
    @IBOutlet weak var FLabel: UILabel!
    
    @IBOutlet weak var SLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
