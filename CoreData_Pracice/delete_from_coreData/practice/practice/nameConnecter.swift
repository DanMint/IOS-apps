//
//  nameConnecter.swift
//  practice
//
//  Created by Daniel mints on 9/5/21.
//

import UIKit

class nameConnecter: UITableViewCell {
    
    @IBOutlet weak var viewDIspForName: UIView!
    
    @IBOutlet weak var name: UIView!
        
    @IBOutlet weak var lastName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
