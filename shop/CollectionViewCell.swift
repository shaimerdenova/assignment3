//
//  CollectionViewCell.swift
//  shop
//
//  Created by Admin on 06.02.2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: CollectionViewCell.self)
    static let nib = UINib(nibName: identifier, bundle: nil)

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var titleName: UILabel!
    @IBOutlet weak var priceLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  
    
}
