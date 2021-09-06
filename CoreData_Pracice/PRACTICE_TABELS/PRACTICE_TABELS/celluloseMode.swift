//
//  celluloseMode.swift
//  PRACTICE_TABELS
//
//  Created by Daniel mints on 9/6/21.
//

import UIKit

class celluloseMode: UITableViewCell {

    
    @IBOutlet weak var theViewForDisp: UIView!
    
    @IBOutlet weak var FLabel: UILabel!
    
    @IBOutlet weak var SLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        theViewForDisp.layer.cornerRadius = 30
        
        FLabel.layer.cornerRadius = 10
        FLabel.layer.borderWidth = 2
        FLabel.clipsToBounds = true
        
        SLabel.layer.cornerRadius = 10
        SLabel.layer.borderWidth = 2
        SLabel.clipsToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
