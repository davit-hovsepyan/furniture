//
//  SignInTableViewController.swift
//  Furniture
//
//  Created by Davit Hovsepyan on 16.08.22.
//

import UIKit

class SignInTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


 }
    @IBAction func didAction(_sender: Any){

        
               
    let vc = storyboard?.instantiateViewController(withIdentifier: "CustomeViewController") as! CustomeViewController
  navigationController?.pushViewController(vc, animated: true)
//
//      self.present(vc, animated: true, completion: nil)
    }
}

//        let tab = CustomeViewController()
//
//        let vc1 = FirstViewController()
//        let vc2 = SecondViewController()
//        let vc3 = ThirdViewController()
//        let vc4 = FourthViewController()
//
//        vc1.title = "Home"
//        vc2.title = "Cart"
//        vc3.title = "Chat"
//        vc4.title = "Profile"
//
//
//        tab.setViewControllers([vc1,vc2,vc3,vc4], animated: false)
//
//        guard let item = tab.tabBar.items else{
//            return
//        }
//
//        let image = ["house","cart","mail","person"]
//
//        for i in 0..<image.count{
//            item[i].image = UIImage(systemName: image[i])
//        }
//
//        tab.modalPresentationStyle = .fullScreen
//        present(tab, animated: true)
