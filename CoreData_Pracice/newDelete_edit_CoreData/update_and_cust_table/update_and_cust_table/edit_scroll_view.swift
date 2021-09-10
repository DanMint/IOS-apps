//
//  edit_scroll_view.swift
//  update_and_cust_table
//
//  Created by Daniel mints on 9/10/21.
//

import UIKit
import CoreData

class edit_scroll_view: UIViewController {
    
    
    @IBOutlet weak var viewOfEditScroll: UITableView!
    
    var first : [String] = []
    var second : [String] = []
    
    var FToPass : String = ""
    var SToPass : String = ""
    
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
    
        viewOfEditScroll.dataSource = self
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEdit" {
            let vc = segue.destination as! actual_edit_view
            vc.FoldVal = FToPass
            vc.SoldVal = SToPass
        }
        
        if segue.identifier == "backToEditView" {
            _ = segue.destination as! edit_view
        }
    }


    @IBAction func editBut(_ sender: Any) {
        let point = (sender as AnyObject).convert(CGPoint.zero, to: viewOfEditScroll)
        guard let indexpath = viewOfEditScroll.indexPathForRow(at: point) else {return}
        FToPass = first[indexpath.row]
        SToPass = second[indexpath.row]
        
        
        
        performSegue(withIdentifier: "goToEdit", sender: self)
    }
    
}

extension edit_scroll_view : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return first.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = viewOfEditScroll.dequeueReusableCell(withIdentifier: "editCell") as! edit_cell_Cust
        
        cell.FELabel.text = first[indexPath.row]
        cell.SELabel.text = second[indexPath.row]
        
        return cell
    }

    
}
