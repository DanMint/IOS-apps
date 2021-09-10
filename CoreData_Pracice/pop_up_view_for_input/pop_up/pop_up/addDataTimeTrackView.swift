//
//  addDataTimeTrackView.swift
//  pop_up
//
//  Created by Daniel mints on 9/10/21.
//

import UIKit
import CoreData

class addDataTimeTrackView: UIViewController {
    
    @IBOutlet weak var inputData: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController
        vc.inputedData = inputData.text as! String
    }
    
    @IBAction func addNewData(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let addData = NSEntityDescription.insertNewObject(forEntityName: "Data", into: context)
        
        addData.setValue(inputData.text, forKey: "value")
        
        do {
            try context.save()
        }
        catch {
            // catch the problemo
        }
        
        performSegue(withIdentifier: "backToMenue", sender: self)
        
    }
    
}
