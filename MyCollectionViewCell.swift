//
//  MyCollectionViewCell.swift
//  Furniture
//
//  Created by Davit Hovsepyan on 18.08.22.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var lable1: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var view: UIView!
    
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        image.backgroundColor = .gray
//        image.layer.masksToBounds = true
//        image.layer.cornerRadius = image.bounds.width / 4
        view.backgroundColor = .gray
        view.layer.masksToBounds = true
        view.layer.cornerRadius = view.bounds.width / 14
    }

    public func configure(with model:Model){
        self.lable.text = model.text
        self.lable1.text = model.text1
        self.image.image = UIImage(named: model.imageName)
        
    }
}
