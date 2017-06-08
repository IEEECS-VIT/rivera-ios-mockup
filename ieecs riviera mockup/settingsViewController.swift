//
//  settingsViewController.swift
//  ieecs riviera mockup
//
//  Created by arora_72 on 08/06/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    private var settingsSet: [Settings] = [ Settings(settingsName: "Wishlist", settingsImage: "candle"),
                                            Settings(settingsName: "Feedback", settingsImage: "ghost"),
                                            Settings(settingsName: "Contact", settingsImage: "cat"),
                                            Settings(settingsName: "Developers", settingsImage: "cat"),
                                            Settings(settingsName: "Licenses", settingsImage: "ghost"),
                                            Settings(settingsName: "Login", settingsImage: "cat")
        
    ]
    let itemsPerRow: CGFloat = 2
    // fileprivate let sectionInsets = UIEdgeInsets(top: 20.0, left: 20.0, bottom: 20.0, right: 20.0)


    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        print("sharingan")
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return settingsSet.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let setStart = settingsSet[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! SettingsCollectionViewCell
        
        cell.settingsImage.image = UIImage(named: setStart.settingsImage)
        cell.settingsLabel.text = setStart.settingsName
        
        return cell
    
    }
    
    
    
}

//extension settingsViewController: UICollectionViewDelegateFlowLayout{
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let paddingSpace = sectionInsets.left * (itemsPerRow-1)
//        let availableWidth = view.frame.width - paddingSpace
//        let widthPerItem = availableWidth/itemsPerRow
//        
//        return CGSize(width: widthPerItem, height: widthPerItem)
//    }
//}

