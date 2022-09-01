//
//  ViewController.swift
//  Furniture
//
//  Created by Davit Hovsepyan on 16.08.22.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var lable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func didAction(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SignUpTableViewTableViewController") as! SignUpTableViewTableViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

