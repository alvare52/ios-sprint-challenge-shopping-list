//
//  ShoppingItemCollectionViewController.swift
//  Shopping List
//
//  Created by Jorge Alvarez on 12/20/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "Cell"

class ShoppingItemCollectionViewController: UICollectionViewController {
    
    let shoppingItemController = ShoppingItemController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDetailSegue" {
            print("Test") // should pass count of items in list
            guard let indexPath = collectionView?.indexPathsForSelectedItems?.first?.item,
                let detailVC = segue.destination as? DetailViewController else {return}
            
            let selectedItem = shoppingItemController.shoppingItems[indexPath]
            
            
            
            
        }
        
//        if segue.identifier == "ShowMansionSegue" {
//            // Check which cell we tapped and then cast down the VC that it goes to
//            guard let indexPath = collectionView.indexPathsForSelectedItems?.first?.item,
//                let selectMansionVC = segue.destination as? MansionDetailViewController else {return}
//
//            let selectMansion = mansionController.mansions[indexPath]
//            selectMansionVC.mansion = selectMansion
//        }
        
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return shoppingItemController.shoppingItems.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShoppingItemCell", for: indexPath) as? ShoppingItemCollectionViewCell else {return UICollectionViewCell()}
    
        let item = shoppingItemController.shoppingItems[indexPath.item]
        cell.shoppingItem = item
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
