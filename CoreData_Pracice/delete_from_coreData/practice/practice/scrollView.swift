//
//  scrollView.swift
//  practice
//
//  Created by Daniel mints on 9/6/21.
//

import UIKit
import CoreData

class scrollView: UIViewController {
    
    @IBOutlet weak var theCustScroll: UITableView!
    
    var names : [String] = []
    var lastName : [String] = []
    
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
                    if let wubba = result.value(forKey: "wubba") {
                        names.append(wubba as! String)
                    }
                    if let lubba = result.value(forKey: "lubba") {
                        lastName.append(lubba as! String)
                    }
                }
            }
        }
        catch {
            // here we catch an error
        }
        
        theCustScroll.dataSource = self
        
    }
}

extension scrollView : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lastName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = theCustScroll.dequeueReusableCell(withIdentifier: "custCell") as! custCellMod
        
        cell.FLabel.text = names[indexPath.row]
        cell.SLabel.text = lastName[indexPath.row]
        
        return cell
    }
}
