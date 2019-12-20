//
//  ShoppingItemCollectionViewController.swift
//  Shopping List
//
//  Created by Jorge Alvarez on 12/20/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


class ShoppingItemCollectionViewController: UICollectionViewController {
    
    let shoppingItemController = ShoppingItemController()

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.delegate = self // ?
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated) // ?
        collectionView?.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCell = shoppingItemController.shoppingItems[indexPath.item]
        
        if selectedCell.hasBeenAdded {
            print("\(selectedCell.name): Added")
            selectedCell.hasBeenAdded = false
            
            
        }
        else {
            print("\(selectedCell.name): Not Added")
            selectedCell.hasBeenAdded = true
        }
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //  Do I need this?
//        if segue.identifier == "ShowDetailSegue" {
//            print("Test") // should pass count of items in list
//            guard let indexPath = collectionView?.indexPathsForSelectedItems?.first?.item,
//                let detailVC = segue.destination as? DetailViewController else {return}
//
//
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

}

//extension ShoppingItemCollectionViewController: DetailDelegate {
//    func boolChanged(shoppingItem: ShoppingItem) {
//
//        collectionView?.reloadData()
//    }
//}
