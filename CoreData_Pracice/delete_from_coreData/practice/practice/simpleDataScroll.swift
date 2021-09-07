//
//  simpleDataScroll.swift
//  practice
//
//  Created by Daniel mints on 9/4/21.
//

import UIKit
import CoreData

class simpleDataScroll: UIViewController {

    @IBOutlet weak var scrollo: UITableView!
    
    var DWubba : [String] = []
    var DLubba : [String] = []
    
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
                    if let wubba = result.value(forKey: "wubba") as? String {
                        print(wubba)
                        DWubba.append(wubba)
                    }
                    if let lubba = result.value(forKey: "lubba") as? String {
                        print(lubba)
                        DLubba.append(lubba)
                    }
                }
            }
        }
        catch {
            
        }
        print(DWubba.count)
        
        
        scrollo.delegate = self
        scrollo.dataSource = self
        
    }
    
}

extension simpleDataScroll: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("yyyyuuuuurrrrrr")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DWubba.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = scrollo.dequeueReusableCell(withIdentifier: "lol", for: indexPath)
        cell.textLabel?.text = DWubba[indexPath.row] + ", " + DLubba[indexPath.row]
        return cell
    }
}

