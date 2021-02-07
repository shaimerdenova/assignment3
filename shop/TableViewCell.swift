//
//  TableViewCell.swift
//  shop
//
//  Created by Admin on 04.02.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    static let identifier = String(describing: TableViewCell.self)
    static let nib = UINib(nibName: identifier, bundle: nil)

    @IBOutlet var contentVew: UIView!
    @IBOutlet weak var titleLabel01: UILabel!
    @IBOutlet weak var addToCart: UIButton!
    @IBOutlet weak var descriptionLabel02: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var priceLabel03: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        addToCart.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
           }
    
}
