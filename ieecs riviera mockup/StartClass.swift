//
//  start.swift
//  ieecs riviera mockup
//
//  Created by arora_72 on 07/06/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import Foundation


struct Start {
    var name: String!
    var backImage: String!
    
    
    init(name: String, backImage: String!) {
        self.name = name
        self.backImage = backImage
    }
    
    
}

    struct Settings {
        var settingsName: String!
        var settingsImage: String!
        
        init(settingsName: String,settingsImage: String) {
            self.settingsImage = settingsImage
            self.settingsName = settingsName
        }
    }
