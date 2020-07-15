//
//  Extensions.swift
//  IOSToastView
//
//  Created by AbdalmagidNew on 7/15/20.
//  Copyright © 2020 AbdalmagidNew. All rights reserved.
//

import Foundation
import UIKit
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // MARK: - Extensions


// MARK: - UIViewController


// MARK: - 1.1 show toast
extension UIViewController{
    func showToast(_ message : String, Error :Bool, doDismition : Bool = false){
        let viewController = self
        let view = self.view
        
        view?.showToast(viewController, message, Error: Error,doDismition: doDismition)
    }
}


// MARK: - UIView



//MARK: - 2.1 Show Toast Message
extension  UIView{
    
    func showToast(_ viewController : UIViewController?, _ message : String, Error :Bool, doDismition : Bool = false) { 

        let toastLabel = UILabel(frame: CGRect(x: 16, y: (self.frame.size.height * 0.85), width: self.frame.size.width - 32, height: 48))
                            
            // Label Attreputes
            toastLabel.font = UIFont(name: "System-Medium", size: 14) ?? UIFont.boldSystemFont(ofSize: 14)//Add you font
            toastLabel.textColor = .white//Add your color
            toastLabel.backgroundColor = UIColor(red: 0.051, green: 0.11, blue: 0.18, alpha: 1)//Add your color
            
            toastLabel.adjustsFontSizeToFitWidth = true
            toastLabel.textAlignment = .left;// if you want you can make it .right
            toastLabel.text = "     " + message
            toastLabel.alpha = 1.0
            toastLabel.layer.cornerRadius = 4;
            toastLabel.clipsToBounds  =  true
            toastLabel.translatesAutoresizingMaskIntoConstraints = false

            self.addSubview(toastLabel)
            
            // Constraints
            toastLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
            toastLabel.widthAnchor.constraint(equalToConstant: self.frame.size.width - 32).isActive = true
            toastLabel.heightAnchor.constraint(equalToConstant: 48).isActive = true
            toastLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor).isActive = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                // Code you want to be delayed
                UIView.animate(withDuration: 1.0, delay: 0.1, options: .curveEaseOut, animations: {
                    toastLabel.alpha = 0.0
                }, completion: {(isCompleted) in
                    if viewController != nil && doDismition{
                        //Dismiss
                        if (viewController?.navigationController != nil){
                            _ = viewController?.navigationController?.popViewController(animated: true)
                        }else{
                            viewController!.dismiss(animated: true, completion: nil)
                        }
                        
                    }
                    toastLabel.removeFromSuperview()
                })
            }

    }
    
}
