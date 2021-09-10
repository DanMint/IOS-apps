//
//  addNewData.swift
//  update_and_cust_table
//
//  Created by Daniel mints on 9/7/21.
//

import UIKit
import CoreData

class addNewData: UIViewController {
    
    
    @IBOutlet weak var firstText: UITextField!
    
    @IBOutlet weak var secondText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func saveDataToCore(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let newAdd = NSEntityDescription.insertNewObject(forEntityName: "Data", into: context)
        
        newAdd.setValue(firstText.text, forKey: "wubba")
        newAdd.setValue(secondText.text, forKey: "lubba")
        
        do {
            print("saved")
            try context.save()
        }
        catch {
            // here we catch an error
        }
        
        firstText.text = ""
        secondText.text = ""
        
    }
    

}


