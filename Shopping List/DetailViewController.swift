//
//  DetailViewController.swift
//  Shopping List
//
//  Created by Jorge Alvarez on 12/20/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var itemsInListLabel: UILabel!
    @IBOutlet weak var personNameTextField: UITextField!
    @IBOutlet weak var personAddressTextField: UITextField!
    
    @IBAction func sendOrderButton(_ sender: UIButton) {
        print("send order")
    }
    
    
    var shoppingItem: ShoppingItem?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
