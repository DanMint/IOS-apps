//
//  viewTheDaya.swift
//  pop_up
//
//  Created by Daniel mints on 9/10/21.
//

import UIKit

class viewTheDaya: UITableViewCell {
    
    
    @IBOutlet weak var viewOfLab: UIView!
    
    @IBOutlet weak var theOnlyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        viewOfLab.layer.cornerRadius = 10
        viewOfLab.layer.borderWidth = 2
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
