//
//  customTextField.swift
//  AA-App
//
//  Created by James Wilson on 10/17/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class formUITextField: UITextField {

    // Get the app's main bundle
    let mainBundle = Bundle.main
    let padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 8);
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }

    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.borderStyle = UITextBorderStyle.line
        self.layer.borderColor = UIColor(displayP3Red: 204/255, green: 204/255, blue: 204/255, alpha: 1.0).cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 0
        
//        self.layer.backgroundColor = bcuxWhite.cgColor
        self.frame.size.height = 50
        //        self.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }

    

}
