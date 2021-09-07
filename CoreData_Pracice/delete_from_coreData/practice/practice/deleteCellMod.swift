//
//  deleteCellMod.swift
//  practice
//
//  Created by Daniel mints on 9/6/21.
//

import UIKit
import CoreData

class deleteCellMod: UITableViewCell {
    @IBOutlet weak var viewOfDelete: UIView!
    
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
    
    
    @IBAction func deleteInstances(_ sender: Any) {
        print("pressed delete")
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Data")
        
        request.returnsObjectsAsFaults = false

        do {
            let results = try context.fetch(request)
                        
            if results.count > 0 {
                for result in results as! [NSManagedObject] {
                    if let wubba = result.value(forKey: "wubba") as? String {
                        if wubba == FLabel.text {
                            print("HERE")
                            context.delete(result)
                            try context.save()
                        }
                    }
                }
            }
        }
        catch {
            // here we handle errors
        }
        
    }
    
}
