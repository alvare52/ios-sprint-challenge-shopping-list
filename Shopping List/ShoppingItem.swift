//
//  ShoppingItem.swift
//  Shopping List
//
//  Created by Jorge Alvarez on 12/20/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit


class ShoppingItem {
    var name: String
    var hasBeenAdded: Bool
    var image: UIImage
    
    init(name: String, hasBeenAdded: Bool, imageName: String) {
        self.name = name
        self.hasBeenAdded = hasBeenAdded
        self.image = UIImage(named: imageName)!
    }
}
