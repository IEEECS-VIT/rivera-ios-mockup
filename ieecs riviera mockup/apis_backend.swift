//
//  apis_backend.swift
//  ieecs riviera mockup
//
//  Created by arora_72 on 08/06/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import Foundation

import Alamofire


class apis: UIViewController{


func getEventsAllPublic(){
    
    Alamofire.request("dummy-dapi.herokuapp.com/api/v1/events/all").responseJSON(completionHandler: {response in
        
        
        print(response.data)
        print(response.description)
    }
    )

}
    
    override func viewDidLoad() {
        getEventsAllPublic()
    }


}









