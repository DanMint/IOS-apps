//
//  delete_cust_TableView.swift
//  update_and_cust_table
//
//  Created by Daniel mints on 9/10/21.
//


import UIKit
import CoreData

class delete_cust_TableView: UIViewController {
    
    @IBOutlet weak var delTableView: UITableView!
    
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
            
            if results.count > 0 {
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
            // here we deal with errors
        }
        
        delTableView.dataSource = self
        
    }
    
    
    @IBAction func deButton(_ sender: Any) {
        
        let point = (sender as AnyObject).convert(CGPoint.zero, to: delTableView)
        guard let indexpath = delTableView.indexPathForRow(at: point) else {return}
        
        let firstToDelete : String = first[indexpath.row]
        let secondDelete : String = second[indexpath.row]

        
        first.remove(at: indexpath.row)
        second.remove(at: indexpath.row)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
                
        let context = appDelegate.persistentContainer.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Data")
        
        request.returnsObjectsAsFaults = false

        do {
            let results = try context.fetch(request)
                        
            if results.count > 0 {
                for result in results as! [NSManagedObject] {
                    if let wubba = result.value(forKey: "wubba") as? String {
                        if wubba == firstToDelete{
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

        delTableView.beginUpdates()
        delTableView.deleteRows(at: [IndexPath(row: indexpath.row, section: 0)], with: .left)
        delTableView.endUpdates()
    
    }
    
}

extension delete_cust_TableView : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        first.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = delTableView.dequeueReusableCell(withIdentifier: "delCell") as! delCellCust
        
        cell.FLabel.text = first[indexPath.row]
        cell.SLabel.text = second[indexPath.row]
        
        return cell
    }
    
    
    
}
