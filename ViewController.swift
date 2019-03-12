//
//  ViewController.swift
//  Apod
//
//  Created by Erick Alcantara on 3/11/19.
//  Copyright © 2019 Erick Alcantara. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request("https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY").responseJSON { (response) -> Void in
            if let value = response.result.value {
                
                let json: JSON = JSON(value)
                
                print(json)
                
                
            }
            
            
        }
    }


}

