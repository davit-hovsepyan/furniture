//
//  SecondViewController.swift
//  Furniture
//
//  Created by Davit Hovsepyan on 18.08.22.
//

import UIKit

class SecondViewController: UIViewController {
   
    @IBOutlet weak var table2: UITableView!
    
    @IBOutlet weak var view1:UIView!
    @IBOutlet weak var view2:UIView!
    @IBOutlet weak var view3:UIView!
    @IBOutlet weak var view4:UIView!
    @IBOutlet weak var view5:UIView!
    
    var models = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Cart"
        
        
        view1.layer.masksToBounds = true
        view1.layer.cornerRadius = view.bounds.width / 24
        view2.layer.masksToBounds = true
        view2.layer.cornerRadius = view.bounds.width / 24
        view3.layer.masksToBounds = true
        view3.layer.cornerRadius = view.bounds.width / 24
        view4.layer.masksToBounds = true
        view4.layer.cornerRadius = view.bounds.width / 24
        view5.layer.masksToBounds = true
        view5.layer.cornerRadius = view.bounds.width / 24
        
        
        
        models.append(Model(text: "chair mair", text1: "4320$", imageName: "chair1"))
        models.append(Model(text: "good chair ", text1: "120$", imageName: "chair2"))
        models.append(Model(text: "normal chair", text1: "320$", imageName: "chair3"))
        models.append(Model(text: "ubmormal chair", text1: "130$", imageName: "chair4"))
        
        table2.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        table2.delegate = self
        table2.dataSource = self

      
    }
    
  
    @IBAction func didAction(_ sender: Any) {
        
    }
}
extension SecondViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table2.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
        cell.configure(with: models)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailUIViewController") as! DetailUIViewController
//        navigationController?.pushViewController(vc, animated: true)
//    }
    
}




    
   

    
    
   
