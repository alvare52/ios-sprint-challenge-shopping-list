//
//  ShoppingItemCollectionViewCell.swift
//  Shopping List
//
//  Created by Jorge Alvarez on 12/20/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ShoppingItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hasBeenAddedLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var shoppingItem: ShoppingItem? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let item = shoppingItem else {return}
        nameLabel.text = item.name
        imageView.image = item.image
        // if hasBeenAdded == ...
    }
}
