//
//  ViewController.swift
//  pop_up
//
//  Created by Daniel mints on 9/10/21.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var dispOfSpend: UILabel!
    
    var currDate : String = ""
    var found : Bool = false
    
    var inputedData : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        dispOfSpend.layer.borderWidth = 2
        dispOfSpend.layer.cornerRadius = 10
        dispOfSpend.clipsToBounds = true
        
        dispOfSpend.text = inputedData 
        
        let today = Date()
        let formatter3 = DateFormatter()
        formatter3.dateFormat = "MMM d, h:mm "
        currDate =  formatter3.string(from: today)
        
        print(currDate)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let addTime = NSEntityDescription.insertNewObject(forEntityName: "DateTrack", into: context)
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DateTrack")
        request.returnsObjectsAsFaults = false
        
        do {
            let results = try context.fetch(request)
            
            if results.count == 0 {
                addTime.setValue(currDate, forKey: "dato")
                try context.save()
            }
            
            else if results.count > 0  {
                for result in results as! [NSManagedObject] {
                    if let dato = result.value(forKey: "dato") as? String {
                        if dato == currDate {
                            found = true
                            break
                        }
                    }
                }
            }
        }
        catch {
            // catch errors here
        }
        
        if found == false {
            addTime.setValue(currDate, forKey: "dato")
            
            do {
                try context.save()
            }
            catch {
                // error catching
            }
        }
        
        do {
            let results = try context.fetch(request)
            
            print("amount of values in core is \(results.count)")
            
            if results.count > 0 {
                for result in results as! [NSManagedObject] {
                    if let dato = result.value(forKey: "dato") {
                        print(dato as! String)
                    }
                }
            }
        }
        catch {
            // prob catcher
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToLog" {
            _ = segue.destination as! logView
        }
        else if segue.identifier == "addNewValues" {
            print("in here")
            _ = segue.destination as! addDataTimeTrackView
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(found)
        if found == false {
            print("in here")
            performSegue(withIdentifier: "addNewValues", sender: self)
        }
    }


}

