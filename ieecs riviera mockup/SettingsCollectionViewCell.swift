//
//  SettingsCollectionViewCell.swift
//  ieecs riviera mockup
//
//  Created by arora_72 on 08/06/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

class SettingsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var settingsImage: UIImageView!
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 3.0
        layer.shadowRadius = 2
        layer.shadowOpacity = 0.8
        layer.shadowOffset = CGSize(width: 5, height: 10)
        
        self.clipsToBounds = false
        
        
           }
}
