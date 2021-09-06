//
//  ViewController.swift
//  PRACTICE_TABELS
//
//  Created by Daniel mints on 9/6/21.
//

import UIKit

class ViewController: UIViewController {
    
    var names : [String] = ["fads", "dfs", "sfad", "fsda", "dfsa", "sfda", "fdsa", "safd"]
    var lastName : [String] = ["sdaf", "fsad", "sfad", "sdaf", "sdfa", "dsfa","sfd", "dsfa"]

    @IBOutlet weak var theModScroll: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        theModScroll.dataSource = self
        
    }
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = theModScroll.dequeueReusableCell(withIdentifier: "cellulose") as! celluloseMode
        
        cell.FLabel.text = names[indexPath.row]
        cell.SLabel.text = lastName[indexPath.row]
        
        return cell
    }
    
}
 
