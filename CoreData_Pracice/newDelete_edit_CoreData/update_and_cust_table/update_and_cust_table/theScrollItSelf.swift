//
//  theScrollItSelf.swift
//  update_and_cust_table
//
//  Created by Daniel mints on 9/7/21.
//

import UIKit
import CoreData

class theScrollItSelf: UIViewController {
    
    @IBOutlet weak var scrollMe: UITableView!
    
    var first : [String] = []
    var second : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Data")
        request.returnsObjectsAsFaults = false
        
        do {
            let results = try context.fetch(request)
            
            if results.count>0 {
                for result in results as! [NSManagedObject] {
                    if let wubba = result.value(forKey: "wubba") {
                        first.append(wubba as! String)
                    }
                    if let lubba = result.value(forKey: "lubba") {
                        second.append(lubba as! String)
                    }
                }
            }
        }
        catch {
            // here we catch errors
        }
        scrollMe.dataSource = self
    }
}

extension theScrollItSelf: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        first.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = scrollMe.dequeueReusableCell(withIdentifier: "cellulose") as! customCellulose
        
        cell.FLabel.text = first[indexPath.row]
        cell.SLabel.text = second[indexPath.row]
        
        return cell
    }
    
}

