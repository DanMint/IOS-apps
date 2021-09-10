//
//  dailyViewOfTheScroll.swift
//  pop_up
//
//  Created by Daniel mints on 9/10/21.
//

import UIKit
import CoreData

class dailyViewOfTheScroll: UIViewController {
    
    
    @IBOutlet weak var theViewOfTheTable: UITableView!
    
    var savedD : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Data")
        request.returnsObjectsAsFaults = false
        
        do {
            let results = try context.fetch(request)
            
            if results.count > 0 {
                for result in results as! [NSManagedObject] {
                    if let value = result.value(forKey: "value") {
                        savedD.append(value as! String)
                    }
                }
            }
        }
        catch {
            // catch probs here
        }

        
        theViewOfTheTable.dataSource = self
        
    }
}

extension dailyViewOfTheScroll: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return savedD.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = theViewOfTheTable.dequeueReusableCell(withIdentifier: "viewData") as! viewTheDaya
            
        cell.theOnlyLabel.text = savedD[indexPath.row]
        
        return cell
    }
    
}
