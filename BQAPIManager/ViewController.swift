// *******************************************
//  File Name:      ViewController.swift       
//  Author:         MrBai
//  Created Date:   2019/11/12 1:54 PM
//    
//  Copyright © 2019 baiqiang
//  All rights reserved
// *******************************************
    

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        MetroReq.request { (objc, error) in
            if let obc = objc {
                print(obc)
            }
        }       
    }


}

