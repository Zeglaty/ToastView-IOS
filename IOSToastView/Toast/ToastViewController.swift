//
//  ToastViewController.swift
//  IOSToastView
//
//  Created by AbdalmagidNew on 7/15/20.
//  Copyright © 2020 AbdalmagidNew. All rights reserved.
//

import UIKit

class ToastViewController: UIViewController {

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // MARK: - decleration
        
        
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var viewToastButton: UIButton!
    
    @IBOutlet weak var viewControllerButton: UIButton!
    @IBOutlet weak var viewControllerWithDismissButton: UIButton!
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // MARK: - loding View Methods

        // override func viewWillAppear
        override func viewDidLoad() {
            super.viewDidLoad()
            setupViewStyle()
            // Do any additional setup after loading the view.
        }
        
        // override func viewDidAppear
        
        // override func willDisapear
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // MARK: - IBActions
    @IBAction func showViewToast(_ sender: Any) {
        
        redView.showToast(nil, "Somthing in a view", Error: false)
    }
    
        
    @IBAction func showVCToast(_ sender: Any) {
        self.showToast("Somthing in a VC", Error: false)
    }
    
    @IBAction func showVCToastAndDismiss(_ sender: Any) {
        self.showToast("Somthing in a VC :)", Error: false, doDismition: true)
    }
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // MARK: - Methods
        
        
        
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // MARK: - Setup View

    func setupViewStyle(){
        viewToastButton.layer.masksToBounds = true
        viewToastButton.layer.cornerRadius = viewToastButton.frame.height/4
        
        viewControllerButton.layer.masksToBounds = true
        viewControllerButton.layer.cornerRadius = viewControllerButton.frame.height/4
        
        viewControllerWithDismissButton.layer.masksToBounds = true
        viewControllerWithDismissButton.layer.cornerRadius = viewControllerWithDismissButton.frame.height/4
        
    }

        
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // MARK: - Navegation
        /*

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */

    }
