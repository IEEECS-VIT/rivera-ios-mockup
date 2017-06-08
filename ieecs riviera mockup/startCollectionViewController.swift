//
//  StartCollectionViewController.swift
//  ieecs riviera mockup
//
//  Created by arora_72 on 07/06/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class StartCollectionViewController: UICollectionViewController {
    
    
    
    
    
    private var startSet: [Start] = [ Start(name: "Premium", backImage: "1"),
                                      Start(name: "Pre Riviera", backImage: "2"),
                                      Start(name: "Workshop", backImage: "3"),
                                      Start(name: "Formal", backImage: "4"),
                                      Start(name: "Informal", backImage: "5"),
                                      Start(name: "Adventure Sports", backImage: "6")

                                      
    ]

    
    //segue
    
    //code for seague overriding
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showRestaurantDetail" {
//            if let indexPath = tableView.indexPathForSelectedRow {
//                let destinationController = segue.destination as! restaurantDetailViewController
//                
//                //passing strings in the window
//                destinationController.restaurantImage = restaurantImages[indexPath.row]
//                destinationController.restaurantName = restaurantNames[indexPath.row]
//                destinationController.restaurantLocation = restaurantLabel[indexPath.row]
//                destinationController.restaurantType = restaurantType[indexPath.row]
//                
//            }
//        }
//        
//    }

//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "firstLevelDetail"{
//            if let
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Our Events"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return startSet.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! StartCollectionViewCell
        
        
        // Configure the cell
        
        let start = startSet[indexPath.row]
        print(start)
        
//        cell.startImageCell?.images = UIImage(named: start.backImage)
//        cell.startButton?.titleLabel = "$\(start.name)"
//        cell.startImageCell?.images = UIImage(named: start.backImage)
//        cell.startButton.se
    
        // cell.startImageCell.images = UIImage(named: start.backImage)
        cell.startLabel.text = start.name
        //cell.startImage.image = uiimstart.backImage
        cell.startImage.image = UIImage(named: start.backImage)
        
        print(cell.startLabel.text)
        print(start.name)
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
