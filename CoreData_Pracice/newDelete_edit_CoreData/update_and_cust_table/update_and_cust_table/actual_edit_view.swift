//
//  actual_edit_view.swift
//  update_and_cust_table
//
//  Created by Daniel mints on 9/10/21.
//

import UIKit
import CoreData

class actual_edit_view: UIViewController {
    
    // this is a view made a mistake in adding
    @IBOutlet var firstEdit: UIView!
    // this is a view made a mistake in adding
    
    @IBOutlet weak var FirstEditNM: UITextField!
    
    @IBOutlet weak var secondEdit: UITextField!
    
    var FoldVal : String = ""
    var SoldVal : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        _ = segue.destination as! delete_edit_selectio_view
    }
    
    @IBAction func saveAll(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Data")
        request.returnsObjectsAsFaults = false
        
        do {
            let results = try context.fetch(request)
            
            if results.count > 0 {
                for result in results as! [NSManagedObject] {
                    if let wubba = result.value(forKey: "wubba") {
                        if wubba as! String == FoldVal {
                            if FirstEditNM.text == "" {
                                result.setValue(FoldVal, forKey: "wubba")
                            }
                            else {
                                result.setValue(FirstEditNM.text, forKey: "wubba")
                            }
                            
                            try context.save()
                        }
                    }
                    if let lubba = result.value(forKey: "lubba") {
                        if lubba as! String == SoldVal {
                            if secondEdit.text == "" {
                                result.setValue(SoldVal, forKey: "lubba")
                                try context.save()
                                break
                            }
                            else {
                                result.setValue(secondEdit.text, forKey: "lubba")
                                try context.save()
                                break
                            }
                        }
                    }
                }
            }
        }
        catch {
            // here we deal with errors
        }
        
        performSegue(withIdentifier: "backToEditMenue", sender: self)
        
    }
    

}

