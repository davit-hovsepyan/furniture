//
//  FirstViewController.swift
//  Furniture
//
//  Created by Davit Hovsepyan on 18.08.22.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    
    var models = [Model]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "chair mair", text1: "4320$", imageName: "chair1"))
        models.append(Model(text: "good chair ", text1: "120$", imageName: "chair2"))
        models.append(Model(text: "normal chair", text1: "320$", imageName: "chair3"))
        models.append(Model(text: "ubmormal chair", text1: "130$", imageName: "chair4"))
        
        
        table.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
       
    }
  
    @IBAction func didAction(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailUIViewController") as! DetailUIViewController
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension FirstViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
        cell.configure(with: models)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
   
}
