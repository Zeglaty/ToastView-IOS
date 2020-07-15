//
//  ViewController.swift
//  IOSToastView
//
//  Created by AbdalmagidNew on 7/15/20.
//  Copyright © 2020 AbdalmagidNew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var ModilyButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showButton.layer.masksToBounds = true
        showButton.layer.cornerRadius = showButton.frame.height/4
        
        ModilyButton.layer.masksToBounds = true
        ModilyButton.layer.cornerRadius = ModilyButton.frame.height/4
    }


}

