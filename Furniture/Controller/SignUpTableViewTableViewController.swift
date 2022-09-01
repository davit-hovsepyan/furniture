//
//  SignUoTableViewTableViewController.swift
//  Furniture
//
//  Created by Davit Hovsepyan on 16.08.22.
//

import UIKit

class SignUpTableViewTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
 }
    @IBAction func didAction(_standart: Any){
        let vc = storyboard?.instantiateViewController(withIdentifier: "SignInTableViewController") as! SignInTableViewController
        navigationController?.pushViewController(vc, animated: true)
    }
}
