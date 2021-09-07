//
//  ViewController.swift
//  practice
//
//  Created by Daniel mints on 9/3/21.
//

import UIKit
import CoreData

class ViewController: UIViewController {
  
    
    @IBOutlet weak var textUno: UITextField!
    
    @IBOutlet weak var textDuo: UITextField!
    
    var chat1 : String = ""
    var chat2 : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textUno.layer.borderWidth = 2
        textDuo.layer.borderWidth = 2

        textUno.keyboardType = UIKeyboardType.alphabet
        textDuo.keyboardType = UIKeyboardType.alphabet
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func save(_ sender: Any) {
        view.endEditing(true)
        
        chat1 = textUno.text!
        chat2 = textDuo.text!
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let newAdd = NSEntityDescription.insertNewObject(forEntityName: "Data", into: context)
        
        newAdd.setValue(chat1, forKey: "wubba")
        newAdd.setValue(chat2, forKey: "lubba")
        
        do {
            try context.save()
            print("saved succesfully")
        }
        catch {
            // deal with error
        }
        
    }
    
    
    
    @IBAction func viewSaved(_ sender: Any) {
    }
    
}

