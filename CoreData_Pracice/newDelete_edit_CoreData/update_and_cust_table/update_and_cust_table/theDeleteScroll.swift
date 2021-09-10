//
//  theDeleteScroll.swift
//  update_and_cust_table
//
//  Created by Daniel mints on 9/8/21.
//

import UIKit
import CoreData

class theDeleteScroll: UIViewController {
    
    
    
    var firstW : [String] = []
    var secondL : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Data")
        request.returnsObjectsAsFaults = false
        
        do {
            let results = try context.fetch(request)
            if results.count > 0 {
                for result in results as! [NSManagedObject] {
                    if let wubba = result.value(forKey: "wubba") {
                        firstW.append(wubba as! String)
                    }
                    if let lubba = result.value(forKey: "lubba") {
                        secondL.append(lubba as! String)
                    }
                }
            }
        }
        catch {
            // here we catch errors
        }
        
        t
    }
    
}

extension theDeleteScroll: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return firstW.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = theScrollItSelf.dequeueReusableCell(withIdentifier: "deleteCell") as! deleteCellMod
                
        cell.FDlabel.text = firstW[indexPath.row]
        cell.SDlabel.text = secondL[indexPath.row]
        
        
        return cell
    }
    
    
    
}

