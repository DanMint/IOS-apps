//
//  ViewController.swift
//  learning
//
//  Created by Daniel mints on 8/14/21.
//

import UIKit

class guessMeView: UIViewController {

    @IBOutlet weak var lblVal: UILabel!
    
    @IBOutlet weak var intField: UITextField!
    
    @IBOutlet weak var outCome: UILabel!
    
    var tempValue : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("On guess me")
        intField.delegate = self
    }

    @IBAction func slide(_ sender: UISlider) {
        if Int(tempValue) == Int(sender.value) {
            outCome.text = "True"
        }
        else {
            outCome.text = "False"
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        intField.resignFirstResponder()
    }
    
    
    @IBAction func valueEnterer(_ sender: Any) {
        tempValue = intField.text!
        lblVal.text = "\(tempValue)"
    }
    
}

extension guessMeView:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

