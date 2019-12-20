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
    
    var itemCount = 0
    var personName = ""
    var personAddress = ""
    
    @IBAction func sendOrderButton(_ sender: UIButton) {
        print("send order pressed")
        // Check if text exists and not empty
        guard let name = personNameTextField.text, let address = personAddressTextField.text, !name.isEmpty, !address.isEmpty else {return}
        personName = name
        personAddress = address
        showAlert()
    }
    
    
    var shoppingItem: ShoppingItem?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //itemsInListLabel.text = "\(itemCount)"
    }
    
    /*
     In the detail view controller, add a button "Submit Order" that creates a UIAlert saying the user's order will be delivered in 15 minutes to the user's address.
     
     The alert must include the user's name in the title
     The alert must include the address in the message

     */
    
    func showAlert() {
        let alert = UIAlertController(title: "Order Placed!", message: "\(personName), your order will be shipped to \(personAddress) \n Thank You!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: goBackHandler(alert:))) // handler runs after OK
        present(alert, animated: true, completion: nil)
    }
    
    // handler will run with when OK is pressed (Not required though)
    func goBackHandler(alert: UIAlertAction!) {
        navigationController?.popViewController(animated: true)
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
